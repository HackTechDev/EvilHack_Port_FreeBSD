PORTNAME=       evilhack
DISTVERSION=    0.9.1
CATEGORIES=     games

MAINTAINER=     you@example.org
COMMENT=        NetHack variant designed to be much more challenging than vanilla
WWW=            https://github.com/k21971/EvilHack

LICENSE=        UNKNOWN
LICENSE_NAME=   NetHack General Public License
LICENSE_FILE=   ${WRKSRC}/LICENSE
LICENSE_PERMS=  dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

USE_GITHUB=     yes
GH_ACCOUNT=     k21971
GH_PROJECT=     EvilHack
GH_TAGNAME=     v${DISTVERSION}

USES=           gmake ncurses shebangfix
SHEBANG_FILES=  sys/unix/setup.sh

BUILD_DEPENDS=  flex:textproc/flex \
                bison:devel/bison

# On veut un port "tty" minimal.
# (Les windowports X11/Qt, sons/tiles etc. pourront venir en OPTIONS plus tard.)

NO_ARCH=        yes

# Répertoires "NetHack-like"
MAKE_ENV+=      PREFIX=${PREFIX} \
                LOCALBASE=${LOCALBASE}

# On va lancer setup.sh avec notre hints custom
do-configure:
	@${CP} ${FILESDIR}/hints-freebsd-ports ${WRKSRC}/sys/unix/hints/freebsd-ports
	@cd ${WRKSRC}/sys/unix && ${SH} ./setup.sh hints/freebsd-ports

do-build:
	@cd ${WRKSRC} && ${GMAKE} all

do-install:
	@cd ${WRKSRC} && ${GMAKE} install DESTDIR=${STAGEDIR}

post-install:
	# Répertoire de jeu pour les saves/locks
	@${MKDIR} ${STAGEDIR}/var/games/evilhack

.include <bsd.port.mk>

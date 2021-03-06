TEMPLATE = app

QT += 3dcore 3drender 3dinput 3dextras widgets
CONFIG += c++11

SOURCES += main.cpp \
    cameracontroller.cpp \
    window3d.cpp \
    sidepanel.cpp \
    maptexturegenerator.cpp \
    maptextureimage.cpp \
    terrain.cpp \
    tilingscheme.cpp \
    quantizedmeshgeometry.cpp \
    map3d.cpp \
    terrainboundsentity.cpp \
    flatterraingenerator.cpp \
    demterraingenerator.cpp \
    quantizedmeshterraingenerator.cpp \
    terraingenerator.cpp \
    demterraintilegeometry.cpp \
    poly2tri/common/shapes.cc \
    poly2tri/sweep/advancing_front.cc \
    poly2tri/sweep/cdt.cc \
    poly2tri/sweep/sweep_context.cc \
    poly2tri/sweep/sweep.cc \
    tessellator.cpp \
    polygongeometry.cpp \
    polygonentity.cpp \
    pointentity.cpp \
    scene.cpp \
    lineentity.cpp \
    chunkedentity.cpp \
    chunknode.cpp \
    chunklist.cpp \
    testchunkloader.cpp \
    chunkloader.cpp \
    terrainchunkloader.cpp \
    utils.cpp

RESOURCES += qml.qrc \
    data.qrc

QGIS_SOURCE_PATH = /home/martin/qgis/git-master
#QGIS_BUILD_PATH = $${QGIS_SOURCE_PATH}/creator
QGIS_BUILD_PATH = $${QGIS_SOURCE_PATH}/build59

INCLUDEPATH += \
  $${QGIS_SOURCE_PATH}/src/core \
  $${QGIS_SOURCE_PATH}/src/core/expression \
  $${QGIS_SOURCE_PATH}/src/core/geometry \
  $${QGIS_SOURCE_PATH}/src/core/metadata \
  $${QGIS_SOURCE_PATH}/src/core/raster \
  $${QGIS_SOURCE_PATH}/src/core/symbology-ng \
  $${QGIS_BUILD_PATH} \
  $${QGIS_BUILD_PATH}/src/core

LIBS += -L$${QGIS_BUILD_PATH}/output/lib -lqgis_core -lz

QT += xml

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    cameracontroller.h \
    window3d.h \
    sidepanel.h \
    maptexturegenerator.h \
    maptextureimage.h \
    terrain.h \
    tilingscheme.h \
    quantizedmeshgeometry.h \
    map3d.h \
    terrainboundsentity.h \
    aabb.h \
    flatterraingenerator.h \
    demterraingenerator.h \
    quantizedmeshterraingenerator.h \
    terraingenerator.h \
    demterraintilegeometry.h \
    poly2tri/poly2tri.h \
    poly2tri/common/shapes.h \
    poly2tri/common/utils.h \
    poly2tri/sweep/advancing_front.h \
    poly2tri/sweep/cdt.h \
    poly2tri/sweep/sweep_context.h \
    poly2tri/sweep/sweep.h \
    tessellator.h \
    polygongeometry.h \
    polygonentity.h \
    pointentity.h \
    scene.h \
    lineentity.h \
    chunkedentity.h \
    chunknode.h \
    chunklist.h \
    testchunkloader.h \
    chunkloader.h \
    terrainchunkloader.h \
    utils.h

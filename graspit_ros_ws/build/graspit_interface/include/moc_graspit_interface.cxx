/****************************************************************************
** Meta object code from reading C++ file 'graspit_interface.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/graspit_interface/include/graspit_interface.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'graspit_interface.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GraspitInterface__GraspitInterface[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      36,   35,   35,   35, 0x05,
      65,   35,   35,   35, 0x05,
     105,   35,   35,   35, 0x05,

 // slots: signature, parameters, type, tag, flags
     137,   35,   35,   35, 0x0a,
     162,   35,   35,   35, 0x0a,
     198,   35,   35,   35, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_GraspitInterface__GraspitInterface[] = {
    "GraspitInterface::GraspitInterface\0\0"
    "emitRunPlannerInMainThread()\0"
    "emitProcessPlannerResultsInMainThread()\0"
    "emitBuildFeedbackInMainThread()\0"
    "runPlannerInMainThread()\0"
    "processPlannerResultsInMainThread()\0"
    "buildFeedbackInMainThread()\0"
};

void GraspitInterface::GraspitInterface::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        GraspitInterface *_t = static_cast<GraspitInterface *>(_o);
        switch (_id) {
        case 0: _t->emitRunPlannerInMainThread(); break;
        case 1: _t->emitProcessPlannerResultsInMainThread(); break;
        case 2: _t->emitBuildFeedbackInMainThread(); break;
        case 3: _t->runPlannerInMainThread(); break;
        case 4: _t->processPlannerResultsInMainThread(); break;
        case 5: _t->buildFeedbackInMainThread(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData GraspitInterface::GraspitInterface::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject GraspitInterface::GraspitInterface::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_GraspitInterface__GraspitInterface,
      qt_meta_data_GraspitInterface__GraspitInterface, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GraspitInterface::GraspitInterface::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GraspitInterface::GraspitInterface::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GraspitInterface::GraspitInterface::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GraspitInterface__GraspitInterface))
        return static_cast<void*>(const_cast< GraspitInterface*>(this));
    if (!strcmp(_clname, "Plugin"))
        return static_cast< Plugin*>(const_cast< GraspitInterface*>(this));
    return QObject::qt_metacast(_clname);
}

int GraspitInterface::GraspitInterface::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void GraspitInterface::GraspitInterface::emitRunPlannerInMainThread()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void GraspitInterface::GraspitInterface::emitProcessPlannerResultsInMainThread()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void GraspitInterface::GraspitInterface::emitBuildFeedbackInMainThread()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE

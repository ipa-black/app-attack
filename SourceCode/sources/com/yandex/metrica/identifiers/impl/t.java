package com.yandex.metrica.identifiers.impl;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes3.dex */
class t implements v {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f12602a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(IBinder iBinder) {
        this.f12602a = iBinder;
    }

    @Override // com.yandex.metrica.identifiers.impl.v
    public String a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            this.f12602a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f12602a;
    }

    @Override // com.yandex.metrica.identifiers.impl.v
    public boolean c() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            this.f12602a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}

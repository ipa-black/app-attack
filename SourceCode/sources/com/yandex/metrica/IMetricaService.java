package com.yandex.metrica;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3.dex */
public interface IMetricaService extends IInterface {
    void a(int i, Bundle bundle) throws RemoteException;

    void a(Bundle bundle) throws RemoteException;

    void b(Bundle bundle) throws RemoteException;

    void reportData(Bundle bundle) throws RemoteException;

    /* loaded from: classes3.dex */
    public static abstract class a extends Binder implements IMetricaService {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int f12305a = 0;

        public a() {
            attachInterface(this, "com.yandex.metrica.IMetricaService");
        }

        public static IMetricaService a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.yandex.metrica.IMetricaService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMetricaService)) {
                return (IMetricaService) queryLocalInterface;
            }
            return new C0342a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.yandex.metrica.IMetricaService");
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                MetricaService.f12307c.a(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i == 2) {
                parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                MetricaService.f12307c.reportData(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i == 3) {
                parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                MetricaService.f12307c.b(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i == 4) {
                parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                MetricaService.f12307c.a(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            } else if (i != 5) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                MetricaService.f12307c.a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
        }

        /* renamed from: com.yandex.metrica.IMetricaService$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        private static class C0342a implements IMetricaService {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f12306a;

            C0342a(IBinder iBinder) {
                this.f12306a = iBinder;
            }

            @Override // com.yandex.metrica.IMetricaService
            public void a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.yandex.metrica.IMetricaService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    if (!this.f12306a.transact(4, obtain, null, 1)) {
                        int i = a.f12305a;
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f12306a;
            }

            @Override // com.yandex.metrica.IMetricaService
            public void b(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.yandex.metrica.IMetricaService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    if (!this.f12306a.transact(3, obtain, null, 1)) {
                        int i = a.f12305a;
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yandex.metrica.IMetricaService
            public void reportData(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.yandex.metrica.IMetricaService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    if (!this.f12306a.transact(2, obtain, null, 1)) {
                        int i = a.f12305a;
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yandex.metrica.IMetricaService
            public void a(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.yandex.metrica.IMetricaService");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f12306a.transact(5, obtain, null, 1)) {
                        int i2 = a.f12305a;
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}

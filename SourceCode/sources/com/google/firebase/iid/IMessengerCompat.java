package com.google.firebase.iid;

import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* loaded from: classes2.dex */
interface IMessengerCompat extends IInterface {
    void send(Message message) throws RemoteException;

    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    public static class Proxy implements IMessengerCompat {
        private final IBinder remote;

        Proxy(IBinder iBinder) {
            this.remote = iBinder;
        }

        @Override // com.google.firebase.iid.IMessengerCompat
        public void send(Message message) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
            obtain.writeInt(1);
            message.writeToParcel(obtain, 0);
            try {
                this.remote.transact(1, obtain, null, 1);
            } finally {
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.remote;
        }
    }

    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    public static class Impl extends Binder implements IMessengerCompat {
        private final Handler handler;

        Impl(Handler handler) {
            this.handler = handler;
            attachInterface(this, "com.google.android.gms.iid.IMessengerCompat");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // com.google.firebase.iid.IMessengerCompat
        public void send(Message message) throws RemoteException {
            message.arg2 = Binder.getCallingUid();
            this.handler.dispatchMessage(message);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            parcel.enforceInterface(getInterfaceDescriptor());
            if (i == 1) {
                send(parcel.readInt() != 0 ? (Message) Message.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            return false;
        }
    }
}

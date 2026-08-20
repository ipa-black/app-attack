package com.google.firebase.iid;

import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* loaded from: classes2.dex */
public class FirebaseIidMessengerCompat implements Parcelable {
    public static final Parcelable.Creator<FirebaseIidMessengerCompat> CREATOR = new Parcelable.Creator<FirebaseIidMessengerCompat>() { // from class: com.google.firebase.iid.FirebaseIidMessengerCompat.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FirebaseIidMessengerCompat createFromParcel(Parcel parcel) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                return new FirebaseIidMessengerCompat(readStrongBinder);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FirebaseIidMessengerCompat[] newArray(int i) {
            return new FirebaseIidMessengerCompat[i];
        }
    };
    Messenger messenger;
    IMessengerCompat messengerCompat;

    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    public static final class HandleOldParcelNameClassLoader extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
            if ("com.google.android.gms.iid.MessengerCompat".equals(str)) {
                if (FirebaseInstanceId.isDebugLogEnabled()) {
                    Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
                    return FirebaseIidMessengerCompat.class;
                }
                return FirebaseIidMessengerCompat.class;
            }
            return super.loadClass(str, z);
        }
    }

    public FirebaseIidMessengerCompat(Handler handler) {
        this.messenger = new Messenger(handler);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FirebaseIidMessengerCompat(IBinder iBinder) {
        this.messenger = new Messenger(iBinder);
    }

    public static int getSendingUid(Message message) {
        return getSendingUidNew(message);
    }

    private static int getSendingUidNew(Message message) {
        return message.sendingUid;
    }

    public void send(Message message) throws RemoteException {
        Messenger messenger = this.messenger;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.messengerCompat.send(message);
        }
    }

    public IBinder getBinder() {
        Messenger messenger = this.messenger;
        return messenger != null ? messenger.getBinder() : this.messengerCompat.asBinder();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return getBinder().equals(((FirebaseIidMessengerCompat) obj).getBinder());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return getBinder().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.messenger;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.messengerCompat.asBinder());
        }
    }
}

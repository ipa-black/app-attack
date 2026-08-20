package com.applovin.exoplayer2;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.applovin.exoplayer2.common.a.s;
/* loaded from: classes.dex */
public final class f extends Binder {

    /* renamed from: a  reason: collision with root package name */
    private static final int f2743a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.common.a.s<Bundle> f2744b;

    static {
        f2743a = com.applovin.exoplayer2.l.ai.f3781a >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public static com.applovin.exoplayer2.common.a.s<Bundle> a(IBinder iBinder) {
        int readInt;
        s.a i = com.applovin.exoplayer2.common.a.s.i();
        int i2 = 0;
        int i3 = 1;
        while (i3 != 0) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(i2);
                try {
                    iBinder.transact(1, obtain, obtain2, 0);
                    while (true) {
                        readInt = obtain2.readInt();
                        if (readInt == 1) {
                            i.a((Bundle) com.applovin.exoplayer2.l.a.b(obtain2.readBundle()));
                            i2++;
                        }
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    i3 = readInt;
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
        return i.a();
    }

    @Override // android.os.Binder
    protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        if (parcel2 == null) {
            return false;
        }
        int size = this.f2744b.size();
        int readInt = parcel.readInt();
        while (readInt < size && parcel2.dataSize() < f2743a) {
            parcel2.writeInt(1);
            parcel2.writeBundle(this.f2744b.get(readInt));
            readInt++;
        }
        parcel2.writeInt(readInt < size ? 2 : 0);
        return true;
    }
}

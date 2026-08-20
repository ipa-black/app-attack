package com.appnext.core;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
/* loaded from: classes.dex */
public abstract class o {
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.appnext.core.o.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            o.this.mMessenger = new Messenger(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            o.this.mMessenger = null;
        }
    };
    private Messenger mMessenger;

    protected abstract void a(Intent intent);

    public final void t(Context context) {
        Intent intent = new Intent(context, AdsService.class);
        a(intent);
        try {
            context.getApplicationContext().bindService(intent, this.mConnection, 1);
            Message obtain = Message.obtain(null, AdsService.ADD_PACK, 0, 0);
            obtain.setData(intent.getExtras());
            this.mMessenger.send(obtain);
        } catch (Throwable unused) {
            context.startService(intent);
        }
    }

    protected static Class<?> bm() {
        return AdsService.class;
    }

    public void a(Context context) {
        try {
            context.unbindService(this.mConnection);
            this.mMessenger = null;
            this.mConnection = null;
        } catch (Throwable unused) {
        }
    }
}

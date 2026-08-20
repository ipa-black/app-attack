package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.p002firebaseiid.zza;
import com.google.android.gms.internal.p002firebaseiid.zze;
import com.google.android.gms.internal.p002firebaseiid.zzf;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.iid.MessengerIpcClient;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* loaded from: classes2.dex */
public class MessengerIpcClient {
    public static final String KEY_ACK = "ack";
    public static final String KEY_DATA = "data";
    public static final String KEY_ONE_WAY = "oneWay";
    public static final String KEY_PACKAGE = "pkg";
    public static final String KEY_UNSUPPORTED = "unsupported";
    private static MessengerIpcClient instance;
    private final Context context;
    private final ScheduledExecutorService executor;
    private Connection connection = new Connection();
    private int nextRequestId = 1;

    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface What {
        public static final int FCM_ACK = 2;
        public static final int IID_TOKEN_REQUEST = 1;
        public static final int LEGACY_IID_TOKEN_REQUEST = 0;
    }

    public static synchronized MessengerIpcClient getInstance(Context context) {
        MessengerIpcClient messengerIpcClient;
        synchronized (MessengerIpcClient.class) {
            if (instance == null) {
                instance = new MessengerIpcClient(context, zza.zza().zza(1, new NamedThreadFactory("MessengerIpcClient"), zzf.zza));
            }
            messengerIpcClient = instance;
        }
        return messengerIpcClient;
    }

    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    private static class OneWayRequest extends Request<Void> {
        OneWayRequest(int i, int i2, Bundle bundle) {
            super(i, i2, bundle);
        }

        @Override // com.google.firebase.iid.MessengerIpcClient.Request
        boolean isOneWay() {
            return true;
        }

        @Override // com.google.firebase.iid.MessengerIpcClient.Request
        void handleResponseInternal(Bundle bundle) {
            if (bundle.getBoolean(MessengerIpcClient.KEY_ACK, false)) {
                finish(null);
            } else {
                fail(new RequestFailedException(4, "Invalid response to one way request"));
            }
        }
    }

    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    public static class RequestFailedException extends Exception {
        private final int errorCode;

        /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface ErrorCode {
            public static final int CONNECTION_TIMEOUT = 1;
            public static final int FAILED_TO_CONNECT = 0;
            public static final int REMOTE_ERROR = 2;
            public static final int REQUEST_TIMEOUT = 3;
            public static final int UNSUPPORTED = 4;
        }

        public RequestFailedException(int i, String str) {
            super(str);
            this.errorCode = i;
        }

        public int getErrorCode() {
            return this.errorCode;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    public static class TwoWayRequest extends Request<Bundle> {
        TwoWayRequest(int i, int i2, Bundle bundle) {
            super(i, i2, bundle);
        }

        @Override // com.google.firebase.iid.MessengerIpcClient.Request
        boolean isOneWay() {
            return false;
        }

        @Override // com.google.firebase.iid.MessengerIpcClient.Request
        void handleResponseInternal(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle("data");
            if (bundle2 == null) {
                bundle2 = Bundle.EMPTY;
            }
            finish(bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    public class Connection implements ServiceConnection {
        final Messenger appMessenger;
        MessengerWrapper gmsCoreMessenger;
        final Queue<Request<?>> requestsToBeSent;
        final SparseArray<Request<?>> requestsWaitingForResponse;
        int state;

        private Connection() {
            this.state = 0;
            this.appMessenger = new Messenger(new zze(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.firebase.iid.MessengerIpcClient$Connection$$Lambda$0
                private final MessengerIpcClient.Connection arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return this.arg$1.receivedResponse(message);
                }
            }));
            this.requestsToBeSent = new ArrayDeque();
            this.requestsWaitingForResponse = new SparseArray<>();
        }

        synchronized boolean enqueueRequest(Request<?> request) {
            int i = this.state;
            if (i == 0) {
                this.requestsToBeSent.add(request);
                startConnection();
                return true;
            } else if (i == 1) {
                this.requestsToBeSent.add(request);
                return true;
            } else if (i == 2) {
                this.requestsToBeSent.add(request);
                scheduleSendingRequests();
                return true;
            } else {
                if (i != 3 && i != 4) {
                    throw new IllegalStateException(new StringBuilder(26).append("Unknown state: ").append(this.state).toString());
                }
                return false;
            }
        }

        void startConnection() {
            Preconditions.checkState(this.state == 0);
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Starting bind to GmsCore");
            }
            this.state = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            if (ConnectionTracker.getInstance().bindService(MessengerIpcClient.this.context, intent, this, 1)) {
                MessengerIpcClient.this.executor.schedule(new Runnable(this) { // from class: com.google.firebase.iid.MessengerIpcClient$Connection$$Lambda$1
                    private final MessengerIpcClient.Connection arg$1;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.arg$1 = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.arg$1.timeoutConnection();
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                handleDisconnect(0, "Unable to bind to service");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean receivedResponse(Message message) {
            int i = message.arg1;
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", new StringBuilder(41).append("Received response to request: ").append(i).toString());
            }
            synchronized (this) {
                Request<?> request = this.requestsWaitingForResponse.get(i);
                if (request == null) {
                    Log.w("MessengerIpcClient", new StringBuilder(50).append("Received response for unknown request: ").append(i).toString());
                    return true;
                }
                this.requestsWaitingForResponse.remove(i);
                unbindIfFinished();
                request.handleResponse(message.getData());
                return true;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service connected");
            }
            MessengerIpcClient.this.executor.execute(new Runnable(this, iBinder) { // from class: com.google.firebase.iid.MessengerIpcClient$Connection$$Lambda$2
                private final MessengerIpcClient.Connection arg$1;
                private final IBinder arg$2;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                    this.arg$2 = iBinder;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.arg$1.lambda$onServiceConnected$0$MessengerIpcClient$Connection(this.arg$2);
                }
            });
        }

        void scheduleSendingRequests() {
            MessengerIpcClient.this.executor.execute(new Runnable(this) { // from class: com.google.firebase.iid.MessengerIpcClient$Connection$$Lambda$3
                private final MessengerIpcClient.Connection arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.arg$1.lambda$scheduleSendingRequests$2$MessengerIpcClient$Connection();
                }
            });
        }

        void sendRequestOverMessenger(Request<?> request) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(request);
                Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(valueOf).length() + 8).append("Sending ").append(valueOf).toString());
            }
            try {
                this.gmsCoreMessenger.send(request.createMessage(MessengerIpcClient.this.context, this.appMessenger));
            } catch (RemoteException e2) {
                handleDisconnect(2, e2.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Service disconnected");
            }
            MessengerIpcClient.this.executor.execute(new Runnable(this) { // from class: com.google.firebase.iid.MessengerIpcClient$Connection$$Lambda$4
                private final MessengerIpcClient.Connection arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.arg$1.lambda$onServiceDisconnected$3$MessengerIpcClient$Connection();
                }
            });
        }

        synchronized void handleDisconnect(int i, String str) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(str);
                Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
            }
            int i2 = this.state;
            if (i2 == 0) {
                throw new IllegalStateException();
            }
            if (i2 == 1 || i2 == 2) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.state = 4;
                ConnectionTracker.getInstance().unbindService(MessengerIpcClient.this.context, this);
                failAllPendingReqests(new RequestFailedException(i, str));
            } else if (i2 == 3) {
                this.state = 4;
            } else if (i2 == 4) {
            } else {
                throw new IllegalStateException(new StringBuilder(26).append("Unknown state: ").append(this.state).toString());
            }
        }

        void failAllPendingReqests(RequestFailedException requestFailedException) {
            for (Request<?> request : this.requestsToBeSent) {
                request.fail(requestFailedException);
            }
            this.requestsToBeSent.clear();
            for (int i = 0; i < this.requestsWaitingForResponse.size(); i++) {
                this.requestsWaitingForResponse.valueAt(i).fail(requestFailedException);
            }
            this.requestsWaitingForResponse.clear();
        }

        synchronized void unbindIfFinished() {
            if (this.state == 2 && this.requestsToBeSent.isEmpty() && this.requestsWaitingForResponse.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.state = 3;
                ConnectionTracker.getInstance().unbindService(MessengerIpcClient.this.context, this);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public synchronized void timeoutConnection() {
            if (this.state == 1) {
                handleDisconnect(1, "Timed out while binding");
            }
        }

        synchronized void timeoutRequest(int i) {
            Request<?> request = this.requestsWaitingForResponse.get(i);
            if (request != null) {
                Log.w("MessengerIpcClient", new StringBuilder(31).append("Timing out request: ").append(i).toString());
                this.requestsWaitingForResponse.remove(i);
                request.fail(new RequestFailedException(3, "Timed out waiting for response"));
                unbindIfFinished();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void lambda$onServiceDisconnected$3$MessengerIpcClient$Connection() {
            handleDisconnect(2, "Service disconnected");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void lambda$scheduleSendingRequests$2$MessengerIpcClient$Connection() {
            final Request<?> poll;
            while (true) {
                synchronized (this) {
                    if (this.state != 2) {
                        return;
                    }
                    if (this.requestsToBeSent.isEmpty()) {
                        unbindIfFinished();
                        return;
                    }
                    poll = this.requestsToBeSent.poll();
                    this.requestsWaitingForResponse.put(poll.requestId, poll);
                    MessengerIpcClient.this.executor.schedule(new Runnable(this, poll) { // from class: com.google.firebase.iid.MessengerIpcClient$Connection$$Lambda$5
                        private final MessengerIpcClient.Connection arg$1;
                        private final MessengerIpcClient.Request arg$2;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.arg$1 = this;
                            this.arg$2 = poll;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.arg$1.lambda$scheduleSendingRequests$1$MessengerIpcClient$Connection(this.arg$2);
                        }
                    }, 30L, TimeUnit.SECONDS);
                }
                sendRequestOverMessenger(poll);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void lambda$scheduleSendingRequests$1$MessengerIpcClient$Connection(Request request) {
            timeoutRequest(request.requestId);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void lambda$onServiceConnected$0$MessengerIpcClient$Connection(IBinder iBinder) {
            synchronized (this) {
                try {
                    if (iBinder == null) {
                        handleDisconnect(0, "Null service connection");
                        return;
                    }
                    try {
                        this.gmsCoreMessenger = new MessengerWrapper(iBinder);
                        this.state = 2;
                        scheduleSendingRequests();
                    } catch (RemoteException e2) {
                        handleDisconnect(0, e2.getMessage());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    public static abstract class Request<T> {
        final Bundle data;
        final int requestId;
        final TaskCompletionSource<T> taskCompletionSource = new TaskCompletionSource<>();
        final int what;

        Request(int i, int i2, Bundle bundle) {
            this.requestId = i;
            this.what = i2;
            this.data = bundle;
        }

        abstract void handleResponseInternal(Bundle bundle);

        abstract boolean isOneWay();

        Message createMessage(Context context, Messenger messenger) {
            Message obtain = Message.obtain();
            obtain.what = this.what;
            obtain.arg1 = this.requestId;
            obtain.replyTo = messenger;
            Bundle bundle = new Bundle();
            bundle.putBoolean(MessengerIpcClient.KEY_ONE_WAY, isOneWay());
            bundle.putString(MessengerIpcClient.KEY_PACKAGE, context.getPackageName());
            bundle.putBundle("data", this.data);
            obtain.setData(bundle);
            return obtain;
        }

        Task<T> getTask() {
            return this.taskCompletionSource.getTask();
        }

        void finish(T t) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(this);
                String valueOf2 = String.valueOf(t);
                Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length()).append("Finishing ").append(valueOf).append(" with ").append(valueOf2).toString());
            }
            this.taskCompletionSource.setResult(t);
        }

        void fail(RequestFailedException requestFailedException) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(this);
                String valueOf2 = String.valueOf(requestFailedException);
                Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length()).append("Failing ").append(valueOf).append(" with ").append(valueOf2).toString());
            }
            this.taskCompletionSource.setException(requestFailedException);
        }

        void handleResponse(Bundle bundle) {
            if (bundle.getBoolean(MessengerIpcClient.KEY_UNSUPPORTED, false)) {
                fail(new RequestFailedException(4, "Not supported by GmsCore"));
            } else {
                handleResponseInternal(bundle);
            }
        }

        public String toString() {
            int i = this.what;
            int i2 = this.requestId;
            return new StringBuilder(55).append("Request { what=").append(i).append(" id=").append(i2).append(" oneWay=").append(isOneWay()).append("}").toString();
        }
    }

    public static synchronized void resetForTesting() {
        synchronized (MessengerIpcClient.class) {
            instance = null;
        }
    }

    MessengerIpcClient(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.executor = scheduledExecutorService;
        this.context = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
    /* loaded from: classes2.dex */
    public static class MessengerWrapper {
        private final Messenger messenger;
        private final FirebaseIidMessengerCompat messengerCompat;

        MessengerWrapper(IBinder iBinder) throws RemoteException {
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if ("android.os.IMessenger".equals(interfaceDescriptor)) {
                this.messenger = new Messenger(iBinder);
                this.messengerCompat = null;
            } else if ("com.google.android.gms.iid.IMessengerCompat".equals(interfaceDescriptor)) {
                this.messengerCompat = new FirebaseIidMessengerCompat(iBinder);
                this.messenger = null;
            } else {
                String valueOf = String.valueOf(interfaceDescriptor);
                Log.w("MessengerIpcClient", valueOf.length() != 0 ? "Invalid interface descriptor: ".concat(valueOf) : new String("Invalid interface descriptor: "));
                throw new RemoteException();
            }
        }

        void send(Message message) throws RemoteException {
            Messenger messenger = this.messenger;
            if (messenger != null) {
                messenger.send(message);
                return;
            }
            FirebaseIidMessengerCompat firebaseIidMessengerCompat = this.messengerCompat;
            if (firebaseIidMessengerCompat != null) {
                firebaseIidMessengerCompat.send(message);
                return;
            }
            throw new IllegalStateException("Both messengers are null");
        }
    }

    public Task<Void> sendOneWayRequest(int i, Bundle bundle) {
        return sendRequest(new OneWayRequest(getNextRequestId(), i, bundle));
    }

    public Task<Bundle> sendRequestForResponse(int i, Bundle bundle) {
        return sendRequest(new TwoWayRequest(getNextRequestId(), i, bundle));
    }

    private synchronized <T> Task<T> sendRequest(Request<T> request) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(request);
            Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(valueOf).length() + 9).append("Queueing ").append(valueOf).toString());
        }
        if (!this.connection.enqueueRequest(request)) {
            Connection connection = new Connection();
            this.connection = connection;
            connection.enqueueRequest(request);
        }
        return request.getTask();
    }

    private synchronized int getNextRequestId() {
        int i;
        i = this.nextRequestId;
        this.nextRequestId = i + 1;
        return i;
    }
}

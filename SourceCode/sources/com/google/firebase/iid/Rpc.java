package com.google.firebase.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.internal.p002firebaseiid.zze;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.iid.FirebaseIidMessengerCompat;
import com.google.firebase.messaging.Constants;
import java.io.IOException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-iid@@20.2.3 */
/* loaded from: classes2.dex */
public class Rpc {
    private static PendingIntent appPendingIntent;
    private static int requestId;
    private final Context context;
    private final Metadata metadata;
    private Messenger outgoingMessenger;
    private FirebaseIidMessengerCompat outgoingMessengerCompat;
    private final SimpleArrayMap<String, TaskCompletionSource<Bundle>> responseCallbacks = new SimpleArrayMap<>();
    private Messenger responseMessenger = new Messenger(new zze(Looper.getMainLooper()) { // from class: com.google.firebase.iid.Rpc.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Rpc.this.handleIncomingMessage(message);
        }
    });
    private final ScheduledExecutorService timeoutExecutor;

    public Rpc(Context context, Metadata metadata) {
        this.context = context;
        this.metadata = metadata;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.timeoutExecutor = scheduledThreadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleIncomingMessage(Message message) {
        if (message != null && (message.obj instanceof Intent)) {
            Intent intent = (Intent) message.obj;
            intent.setExtrasClassLoader(new FirebaseIidMessengerCompat.HandleOldParcelNameClassLoader());
            if (intent.hasExtra("google.messenger")) {
                Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                if (parcelableExtra instanceof FirebaseIidMessengerCompat) {
                    this.outgoingMessengerCompat = (FirebaseIidMessengerCompat) parcelableExtra;
                }
                if (parcelableExtra instanceof Messenger) {
                    this.outgoingMessenger = (Messenger) parcelableExtra;
                }
            }
            handleIidResponse((Intent) message.obj);
            return;
        }
        Log.w("FirebaseInstanceId", "Dropping invalid message");
    }

    public static synchronized void setPendingIntentExtra(Context context, Intent intent) {
        synchronized (Rpc.class) {
            if (appPendingIntent == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                appPendingIntent = PendingIntent.getBroadcast(context, 0, intent2, 0);
            }
            intent.putExtra("app", appPendingIntent);
        }
    }

    private void startRegisterRpc(Bundle bundle, String str) {
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.metadata.getIidImplementation() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        setPendingIntentExtra(this.context, intent);
        sendRequest(intent, str);
    }

    protected void sendRequest(Intent intent, String str) {
        intent.putExtra("kid", new StringBuilder(String.valueOf(str).length() + 5).append("|ID|").append(str).append("|").toString());
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 8).append("Sending ").append(valueOf).toString());
        }
        intent.putExtra("google.messenger", this.responseMessenger);
        if (this.outgoingMessenger != null || this.outgoingMessengerCompat != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.outgoingMessenger;
                if (messenger != null) {
                    messenger.send(obtain);
                    return;
                } else {
                    this.outgoingMessengerCompat.send(obtain);
                    return;
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    Log.d("FirebaseInstanceId", "Messenger failed, fallback to startService");
                }
            }
        }
        if (this.metadata.getIidImplementation() == 2) {
            this.context.sendBroadcast(intent);
        } else {
            this.context.startService(intent);
        }
    }

    void processError(Intent intent) {
        String stringExtra = intent.getStringExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR);
        if (stringExtra == null) {
            String valueOf = String.valueOf(intent.getExtras());
            Log.w("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 49).append("Unexpected response, no error or registration id ").append(valueOf).toString());
            return;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf2 = String.valueOf(stringExtra);
            Log.d("FirebaseInstanceId", valueOf2.length() != 0 ? "Received InstanceID error ".concat(valueOf2) : new String("Received InstanceID error "));
        }
        if (stringExtra.startsWith("|")) {
            String[] split = stringExtra.split("\\|");
            if (split.length <= 2 || !"ID".equals(split[1])) {
                String valueOf3 = String.valueOf(stringExtra);
                Log.w("FirebaseInstanceId", valueOf3.length() != 0 ? "Unexpected structured response ".concat(valueOf3) : new String("Unexpected structured response "));
                return;
            }
            String str = split[2];
            String str2 = split[3];
            if (str2.startsWith(":")) {
                str2 = str2.substring(1);
            }
            setResponse(str, intent.putExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR, str2).getExtras());
            return;
        }
        synchronized (this.responseCallbacks) {
            for (int i = 0; i < this.responseCallbacks.size(); i++) {
                setResponse(this.responseCallbacks.keyAt(i), intent.getExtras());
            }
        }
    }

    private void setResponse(String str, Bundle bundle) {
        synchronized (this.responseCallbacks) {
            TaskCompletionSource<Bundle> remove = this.responseCallbacks.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                Log.w("FirebaseInstanceId", valueOf.length() != 0 ? "Missing callback for ".concat(valueOf) : new String("Missing callback for "));
                return;
            }
            remove.setResult(bundle);
        }
    }

    private void handleIidResponse(Intent intent) {
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action)) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(action);
                Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Unexpected response action: ".concat(valueOf) : new String("Unexpected response action: "));
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        if (stringExtra == null) {
            processError(intent);
            return;
        }
        Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)").matcher(stringExtra);
        if (!matcher.matches()) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf2 = String.valueOf(stringExtra);
                Log.d("FirebaseInstanceId", valueOf2.length() != 0 ? "Unexpected response string: ".concat(valueOf2) : new String("Unexpected response string: "));
                return;
            }
            return;
        }
        String group = matcher.group(1);
        String group2 = matcher.group(2);
        Bundle extras = intent.getExtras();
        extras.putString("registration_id", group2);
        setResponse(group, extras);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Bundle> registerRpc(Bundle bundle) {
        if (this.metadata.getGmsVersionCode() >= 12000000) {
            return MessengerIpcClient.getInstance(this.context).sendRequestForResponse(1, bundle).continueWith(FirebaseIidExecutors.directExecutor(), Rpc$$Lambda$0.$instance);
        }
        return registerRpcViaIntent(bundle);
    }

    private Task<Bundle> registerRpcViaIntent(final Bundle bundle) {
        if (!this.metadata.isGmscorePresent()) {
            return Tasks.forException(new IOException("MISSING_INSTANCEID_SERVICE"));
        }
        return registerRpcInternal(bundle).continueWithTask(FirebaseIidExecutors.directExecutor(), new Continuation(this, bundle) { // from class: com.google.firebase.iid.Rpc$$Lambda$1
            private final Rpc arg$1;
            private final Bundle arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = bundle;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.arg$1.lambda$registerRpcViaIntent$2$Rpc(this.arg$2, task);
            }
        });
    }

    private static boolean gmsCoreRespondedWithMessenger(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    public static synchronized String nextId() {
        String num;
        synchronized (Rpc.class) {
            int i = requestId;
            requestId = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    private Task<Bundle> registerRpcInternal(Bundle bundle) {
        final String nextId = nextId();
        final TaskCompletionSource<Bundle> taskCompletionSource = new TaskCompletionSource<>();
        synchronized (this.responseCallbacks) {
            this.responseCallbacks.put(nextId, taskCompletionSource);
        }
        startRegisterRpc(bundle, nextId);
        final ScheduledFuture<?> schedule = this.timeoutExecutor.schedule(new Runnable(taskCompletionSource) { // from class: com.google.firebase.iid.Rpc$$Lambda$2
            private final TaskCompletionSource arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = taskCompletionSource;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Rpc.lambda$registerRpcInternal$3$Rpc(this.arg$1);
            }
        }, 30L, TimeUnit.SECONDS);
        taskCompletionSource.getTask().addOnCompleteListener(FirebaseIidExecutors.directExecutor(), new OnCompleteListener(this, nextId, schedule) { // from class: com.google.firebase.iid.Rpc$$Lambda$3
            private final Rpc arg$1;
            private final String arg$2;
            private final ScheduledFuture arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = nextId;
                this.arg$3 = schedule;
            }

            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.arg$1.lambda$registerRpcInternal$4$Rpc(this.arg$2, this.arg$3, task);
            }
        });
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$registerRpcInternal$4$Rpc(String str, ScheduledFuture scheduledFuture, Task task) {
        synchronized (this.responseCallbacks) {
            this.responseCallbacks.remove(str);
        }
        scheduledFuture.cancel(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$registerRpcInternal$3$Rpc(TaskCompletionSource taskCompletionSource) {
        if (taskCompletionSource.trySetException(new IOException("TIMEOUT"))) {
            Log.w("FirebaseInstanceId", "No response");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Task lambda$registerRpcViaIntent$2$Rpc(Bundle bundle, Task task) throws Exception {
        return (task.isSuccessful() && gmsCoreRespondedWithMessenger((Bundle) task.getResult())) ? registerRpcInternal(bundle).onSuccessTask(FirebaseIidExecutors.directExecutor(), Rpc$$Lambda$4.$instance) : task;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Task lambda$registerRpcViaIntent$1$Rpc(Bundle bundle) throws Exception {
        if (gmsCoreRespondedWithMessenger(bundle)) {
            return Tasks.forResult(null);
        }
        return Tasks.forResult(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Bundle lambda$registerRpc$0$Rpc(Task task) throws Exception {
        if (task.isSuccessful()) {
            return (Bundle) task.getResult();
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(task.getException());
            Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 22).append("Error making request: ").append(valueOf).toString());
        }
        throw new IOException(GmsRpc.ERROR_SERVICE_NOT_AVAILABLE);
    }
}

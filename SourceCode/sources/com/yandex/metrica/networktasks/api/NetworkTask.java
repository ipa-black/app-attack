package com.yandex.metrica.networktasks.api;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
public class NetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private d f16244a = d.EMPTY;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f16245b;

    /* renamed from: c  reason: collision with root package name */
    private final IExecutionPolicy f16246c;

    /* renamed from: d  reason: collision with root package name */
    private final ExponentialBackoffPolicy f16247d;

    /* renamed from: e  reason: collision with root package name */
    private final UnderlyingNetworkTask f16248e;

    /* renamed from: f  reason: collision with root package name */
    private final List f16249f;

    /* renamed from: g  reason: collision with root package name */
    private final String f16250g;

    /* loaded from: classes5.dex */
    public enum Method {
        GET,
        POST
    }

    /* loaded from: classes5.dex */
    public interface ShouldTryNextHostCondition {
        boolean shouldTryNextHost(int i);
    }

    public NetworkTask(Executor executor, IExecutionPolicy iExecutionPolicy, ExponentialBackoffPolicy exponentialBackoffPolicy, UnderlyingNetworkTask underlyingNetworkTask, List list, String str) {
        this.f16245b = executor;
        this.f16246c = iExecutionPolicy;
        this.f16247d = exponentialBackoffPolicy;
        this.f16248e = underlyingNetworkTask;
        this.f16249f = list;
        this.f16250g = str;
    }

    private synchronized boolean a(d dVar) {
        if (a(dVar)) {
            this.f16244a = dVar;
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private synchronized boolean a(d... dVarArr) {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        bool = Boolean.TRUE;
        d dVar = this.f16244a;
        int length = dVarArr.length;
        int i = 0;
        while (true) {
            if (i < length) {
                boolean z = true;
                switch (dVarArr[i].ordinal()) {
                    case 0:
                        bool3 = null;
                        break;
                    case 1:
                        if (dVar != d.EMPTY) {
                            z = false;
                        }
                        bool3 = Boolean.valueOf(z);
                        break;
                    case 2:
                    case 6:
                        if (dVar != d.PENDING) {
                            if (dVar == d.REMOVED) {
                                bool3 = Boolean.FALSE;
                                break;
                            }
                            bool3 = null;
                            break;
                        }
                        bool3 = Boolean.TRUE;
                    case 3:
                        if (dVar != d.PREPARING && dVar != d.SUCCESS && dVar != d.FAILED) {
                            if (dVar == d.REMOVED) {
                                bool3 = Boolean.FALSE;
                                break;
                            }
                            bool3 = null;
                            break;
                        }
                        bool3 = Boolean.TRUE;
                        break;
                    case 4:
                    case 5:
                        if (dVar != d.EXECUTING) {
                            if (dVar == d.REMOVED) {
                                bool3 = Boolean.FALSE;
                                break;
                            }
                            bool3 = null;
                            break;
                        } else {
                            bool3 = Boolean.TRUE;
                        }
                    case 7:
                        if (dVar != d.SUCCESS && dVar != d.FAILED && dVar != d.SHOULD_NOT_EXECUTE && dVar != d.PENDING && dVar != d.PREPARING && dVar != d.EXECUTING) {
                            if (dVar == d.REMOVED) {
                                bool3 = Boolean.FALSE;
                                break;
                            }
                            bool3 = null;
                            break;
                        }
                        bool3 = Boolean.TRUE;
                        break;
                    case 8:
                        if (dVar != d.EMPTY) {
                            if (dVar == d.REMOVED) {
                                z = false;
                            }
                            bool3 = Boolean.valueOf(z);
                            break;
                        } else {
                            bool3 = null;
                            break;
                        }
                    default:
                        bool3 = Boolean.FALSE;
                        break;
                }
                if (Boolean.TRUE.equals(bool3)) {
                    i++;
                } else {
                    bool = bool3;
                }
            }
        }
        bool2 = Boolean.TRUE;
        bool2.equals(bool);
        return bool2.equals(bool);
    }

    public String description() {
        return this.f16248e.description();
    }

    public IExecutionPolicy getConnectionExecutionPolicy() {
        return this.f16246c;
    }

    public Executor getExecutor() {
        return this.f16245b;
    }

    public ExponentialBackoffPolicy getExponentialBackoffPolicy() {
        return this.f16247d;
    }

    public RequestDataHolder getRequestDataHolder() {
        return this.f16248e.getRequestDataHolder();
    }

    public ResponseDataHolder getResponseDataHolder() {
        return this.f16248e.getResponseDataHolder();
    }

    public RetryPolicyConfig getRetryPolicyConfig() {
        return this.f16248e.getRetryPolicyConfig();
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f16248e.getSslSocketFactory();
    }

    public UnderlyingNetworkTask getUnderlyingTask() {
        return this.f16248e;
    }

    public String getUrl() {
        return this.f16248e.getFullUrlFormer().getUrl();
    }

    public String getUserAgent() {
        return this.f16250g;
    }

    public boolean onCreateNetworkTask() {
        if (a(d.PREPARING)) {
            return this.f16248e.onCreateTask();
        }
        return false;
    }

    public boolean onPerformRequest() {
        boolean a2 = a(d.EXECUTING);
        if (a2) {
            this.f16248e.getFullUrlFormer().incrementAttemptNumber();
            this.f16248e.getFullUrlFormer().buildAndSetFullHostUrl();
            this.f16248e.onPerformRequest();
        }
        return a2;
    }

    public boolean onRequestComplete() {
        boolean z;
        boolean z2;
        synchronized (this) {
            d dVar = d.SUCCESS;
            z = false;
            d dVar2 = d.FAILED;
            if (a(dVar, dVar2)) {
                boolean onRequestComplete = this.f16248e.onRequestComplete();
                if (onRequestComplete) {
                    this.f16244a = dVar;
                } else {
                    this.f16244a = dVar2;
                }
                z2 = onRequestComplete;
                z = true;
            } else {
                z2 = false;
            }
        }
        if (z) {
            this.f16248e.onPostRequestComplete(z2);
        }
        return z2;
    }

    public void onRequestError(Throwable th) {
        if (a(d.FAILED)) {
            this.f16248e.onRequestError(th);
        }
    }

    public void onShouldNotExecute() {
        if (a(d.SHOULD_NOT_EXECUTE)) {
            this.f16248e.onShouldNotExecute();
        }
    }

    public boolean onTaskAdded() {
        boolean a2 = a(d.PENDING);
        if (a2) {
            this.f16248e.onTaskAdded();
        }
        return a2;
    }

    public void onTaskFinished() {
        d dVar;
        boolean a2;
        synchronized (this) {
            dVar = this.f16244a;
            a2 = a(d.FINISHED);
        }
        if (a2) {
            this.f16248e.onTaskFinished();
            if (dVar == d.SUCCESS) {
                this.f16248e.onSuccessfulTaskFinished();
            } else if (dVar == d.FAILED || dVar == d.SHOULD_NOT_EXECUTE) {
                this.f16248e.onUnsuccessfulTaskFinished();
            }
        }
    }

    public void onTaskRemoved() {
        if (a(d.REMOVED)) {
            this.f16248e.onTaskRemoved();
        }
    }

    public synchronized boolean shouldTryNextHost() {
        boolean z;
        boolean z2;
        boolean hasMoreHosts = this.f16248e.getFullUrlFormer().hasMoreHosts();
        int responseCode = this.f16248e.getResponseDataHolder().getResponseCode();
        Iterator it = this.f16249f.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                z2 = true;
                break;
            } else if (!((ShouldTryNextHostCondition) it.next()).shouldTryNextHost(responseCode)) {
                z2 = false;
                break;
            }
        }
        d dVar = this.f16244a;
        if (dVar != d.REMOVED) {
            if (dVar != d.FINISHED && hasMoreHosts && z2) {
                z = true;
            }
        }
        return z;
    }
}

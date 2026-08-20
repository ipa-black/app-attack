package com.appodeal.ads.unified.tasks;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.appodeal.ads.RestrictedData;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.n5;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.mraid.UnifiedMraidNetworkParams;
import com.appodeal.ads.unified.vast.UnifiedVastNetworkParams;
import com.appodeal.ads.utils.ExchangeAd;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.s;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
/* loaded from: classes2.dex */
public class S2SAdTask<ResponseType, OutputType> implements Runnable {
    private static final int RESULT_FAIL = 0;
    private static final int RESULT_SUCCESS = 1;
    public final Callback<OutputType> callback;
    public final Context context;
    private final Handler handler;
    private final AdResponseProcessor<ResponseType> processor;
    private final AdParamsResolver<ResponseType, OutputType> resolver;
    public final RestrictedData restrictedData;
    public final String url;
    private final AdParamsProcessorCallback<ResponseType> processorCallback = new AdParamsProcessorCallback<ResponseType>() { // from class: com.appodeal.ads.unified.tasks.S2SAdTask.1
        @Override // com.appodeal.ads.unified.tasks.AdParamsProcessorCallback
        public void onProcessFail(LoadingError loadingError) {
            S2SAdTask.this.notifyFail(loadingError);
        }

        @Override // com.appodeal.ads.unified.tasks.AdParamsProcessorCallback
        public void onProcessSuccess(ResponseType responsetype) {
            try {
                S2SAdTask.this.onParamsProcessSuccess(responsetype);
                S2SAdTask.this.resolver.processResponse(responsetype, S2SAdTask.this.resolverCallback);
            } catch (Throwable th) {
                Log.log(th);
                S2SAdTask.this.notifyFail(LoadingError.InternalError);
            }
        }
    };
    private final AdParamsResolverCallback<OutputType> resolverCallback = new AdParamsResolverCallback() { // from class: com.appodeal.ads.unified.tasks.S2SAdTask$$ExternalSyntheticLambda0
        @Override // com.appodeal.ads.unified.tasks.AdParamsResolverCallback
        public final void onResolve(Object obj) {
            S2SAdTask.this.notifySuccess(obj);
        }
    };

    /* loaded from: classes2.dex */
    public interface Callback<OutputType> {
        void onFail(LoadingError loadingError);

        void onSuccess(Context context, OutputType outputtype);
    }

    public S2SAdTask(final Context context, String str, RestrictedData restrictedData, AdResponseProcessor<ResponseType> adResponseProcessor, AdParamsResolver<ResponseType, OutputType> adParamsResolver, final Callback<OutputType> callback) {
        this.context = context;
        this.url = str;
        this.restrictedData = restrictedData;
        this.processor = adResponseProcessor;
        this.resolver = adParamsResolver;
        this.callback = callback;
        this.handler = new Handler(Looper.getMainLooper()) { // from class: com.appodeal.ads.unified.tasks.S2SAdTask.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Callback callback2 = callback;
                if (callback2 != 0) {
                    int i = message.what;
                    if (i == 0) {
                        callback2.onFail((LoadingError) message.obj);
                    } else if (i != 1) {
                    } else {
                        callback2.onSuccess(context, message.obj);
                    }
                }
            }
        };
    }

    public static void requestMraid(Context context, String str, UnifiedMraidNetworkParams unifiedMraidNetworkParams, final UnifiedAdCallback unifiedAdCallback, Callback<UnifiedMraidNetworkParams> callback) {
        new S2SAdTask<ExchangeAd, UnifiedMraidNetworkParams>(context, str, unifiedMraidNetworkParams.restrictedData, new ExchangeAdResponseProcessor(), new MraidParamsResolver(unifiedMraidNetworkParams), callback) { // from class: com.appodeal.ads.unified.tasks.S2SAdTask.3
            @Override // com.appodeal.ads.unified.tasks.S2SAdTask
            public void onParamsProcessSuccess(ExchangeAd exchangeAd) {
                super.onParamsProcessSuccess((AnonymousClass3) exchangeAd);
                Bundle bundle = new Bundle();
                bundle.putParcelable("exchange_ad", exchangeAd);
                unifiedAdCallback.onAdInfoRequested(bundle);
            }
        }.start();
    }

    public static void requestNast(Context context, String str, RestrictedData restrictedData, final UnifiedAdCallback unifiedAdCallback, Callback<String> callback) {
        new S2SAdTask<ExchangeAd, String>(context, str, restrictedData, new ExchangeAdResponseProcessor(), new NastParamsResolver(), callback) { // from class: com.appodeal.ads.unified.tasks.S2SAdTask.5
            @Override // com.appodeal.ads.unified.tasks.S2SAdTask
            public void onParamsProcessSuccess(ExchangeAd exchangeAd) {
                super.onParamsProcessSuccess((AnonymousClass5) exchangeAd);
                Bundle bundle = new Bundle();
                bundle.putParcelable("exchange_ad", exchangeAd);
                unifiedAdCallback.onAdInfoRequested(bundle);
            }
        }.start();
    }

    public static void requestVast(Context context, String str, UnifiedVastNetworkParams unifiedVastNetworkParams, final UnifiedAdCallback unifiedAdCallback, Callback<UnifiedVastNetworkParams> callback) {
        new S2SAdTask<ExchangeAd, UnifiedVastNetworkParams>(context, str, unifiedVastNetworkParams.restrictedData, new ExchangeAdResponseProcessor(), new VastParamsResolver(unifiedVastNetworkParams), callback) { // from class: com.appodeal.ads.unified.tasks.S2SAdTask.4
            @Override // com.appodeal.ads.unified.tasks.S2SAdTask
            public void onParamsProcessSuccess(ExchangeAd exchangeAd) {
                super.onParamsProcessSuccess((AnonymousClass4) exchangeAd);
                Bundle bundle = new Bundle();
                bundle.putParcelable("exchange_ad", exchangeAd);
                unifiedAdCallback.onAdInfoRequested(bundle);
            }
        }.start();
    }

    public final void notifyFail(LoadingError loadingError) {
        this.handler.obtainMessage(0, loadingError).sendToTarget();
    }

    public final void notifySuccess(OutputType outputtype) {
        this.handler.sendMessage(this.handler.obtainMessage(1, outputtype));
    }

    public URL obtainRequestUrl(String str) {
        return new URL(str);
    }

    public void onParamsProcessSuccess(ResponseType responsetype) {
    }

    public void prepareUrlConnection(Context context, HttpURLConnection httpURLConnection) {
        String httpAgent = this.restrictedData.getHttpAgent(context);
        if (TextUtils.isEmpty(httpAgent)) {
            return;
        }
        httpURLConnection.setRequestProperty("User-Agent", httpAgent);
    }

    public void processServerResult(URLConnection uRLConnection) {
        String a2 = n5.a(uRLConnection.getInputStream());
        if (TextUtils.isEmpty(a2) || TextUtils.getTrimmedLength(a2) == 0) {
            notifyFail(LoadingError.NoFill);
        } else {
            processServerResult(uRLConnection, a2);
        }
    }

    public void processServerResult(URLConnection uRLConnection, String str) {
        this.processor.processResponse(uRLConnection, str, this.processorCallback);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (TextUtils.isEmpty(this.url) || TextUtils.getTrimmedLength(this.url) == 0) {
            notifyFail(LoadingError.IncorrectAdunit);
            return;
        }
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                URL obtainRequestUrl = obtainRequestUrl(this.url);
                if (obtainRequestUrl == null) {
                    notifyFail(LoadingError.IncorrectAdunit);
                    return;
                }
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) obtainRequestUrl.openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(Constants.SERVER_TIMEOUT_MS);
                    httpURLConnection2.setReadTimeout(Constants.SERVER_TIMEOUT_MS);
                    prepareUrlConnection(this.context, httpURLConnection2);
                    processServerResult(httpURLConnection2);
                    httpURLConnection2.disconnect();
                } catch (Exception e2) {
                    e = e2;
                    httpURLConnection = httpURLConnection2;
                    Log.log(e);
                    notifyFail(LoadingError.InternalError);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public void start() {
        s.f7824e.f7825a.execute(this);
    }
}

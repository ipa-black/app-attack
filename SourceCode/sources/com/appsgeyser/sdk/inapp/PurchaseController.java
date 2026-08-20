package com.appsgeyser.sdk.inapp;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.inapp.PurchaseController;
import com.appsgeyser.sdk.inapp.billing.BillingAdapter;
import com.appsgeyser.sdk.inapp.models.BillingProduct;
import com.appsgeyser.sdk.inapp.models.configdata.AccessData;
import com.appsgeyser.sdk.inapp.models.configdata.ConfigInappData;
import com.appsgeyser.sdk.inapp.models.configdata.DisableAdsData;
import com.appsgeyser.sdk.inapp.models.statuses.ErrorStatus;
import com.appsgeyser.sdk.inapp.models.statuses.LoadingStatus;
import com.appsgeyser.sdk.inapp.models.statuses.Status;
import com.appsgeyser.sdk.inapp.models.statuses.SuccessStatus;
import com.appsgeyser.sdk.inapp.utils.Decoder;
import com.appsgeyser.sdk.inapp.utils.DisableAdsSharedPrefs;
import com.appsgeyser.sdk.server.StatController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import rx.functions.Action1;
import rx.subjects.BehaviorSubject;
/* loaded from: classes2.dex */
public class PurchaseController {
    private static PurchaseController instance;
    private BillingAdapter billingAdapter;
    private Context context;
    private String wid;
    private final String LOG_TAG = "PurchaseController";
    private final String KEY_PRICE_VALUE = "value";
    private final String KEY_PRICE_CURRENCY = "currency";
    private boolean isAccessDataReceivingComplete = false;
    private boolean isDisableAdsDataReceivingComplete = false;
    private AccessData accessData = null;
    private DisableAdsData disableAdsData = null;
    private PurchaseListener purchaseListener = null;
    private final BehaviorSubject<Status> accessStatusSubject = BehaviorSubject.create(new LoadingStatus());
    private final BehaviorSubject<Status> disableAdsStatusSubject = BehaviorSubject.create(new LoadingStatus());

    /* loaded from: classes2.dex */
    public interface PurchaseListener {
        void onErrorPurchase(String str);

        void onSuccessPurchase();
    }

    private PurchaseController() {
    }

    public void init(Context context, String str) {
        this.context = context;
        this.wid = str;
        registerAccessDataListener();
        registerDisableAdsDataListener();
    }

    public static PurchaseController getInstance() {
        if (instance == null) {
            instance = new PurchaseController();
        }
        return instance;
    }

    public void subscribeAccessStatus(Action1<? super Status> action1) {
        this.accessStatusSubject.subscribe(action1);
    }

    public void subscribeDisableAdsStatus(Action1<? super Status> action1) {
        this.disableAdsStatusSubject.subscribe(action1);
    }

    public void purchaseAccess(Activity activity, PurchaseListener purchaseListener) {
        if (isInappKeyValid(this.accessData)) {
            purchase(activity, purchaseListener, this.accessData);
            return;
        }
        Log.e("PurchaseController", "Invalid access data");
        purchaseListener.onErrorPurchase("Invalid access data");
    }

    public void purchaseDisableAds(Activity activity, PurchaseListener purchaseListener) {
        if (isInappKeyValid(this.disableAdsData)) {
            purchase(activity, purchaseListener, this.disableAdsData);
            return;
        }
        Log.e("PurchaseController", "Invalid disable ads data");
        purchaseListener.onErrorPurchase("Invalid disable ads data");
    }

    private void purchase(Activity activity, PurchaseListener purchaseListener, ConfigInappData configInappData) {
        this.purchaseListener = purchaseListener;
        this.billingAdapter.purchase(activity, configInappData.getInappKey());
    }

    private void registerAccessDataListener() {
        AppsgeyserSDK.isAccessDataEnable(this.context, new AppsgeyserSDK.OnAccessDataEnableListener() { // from class: com.appsgeyser.sdk.inapp.PurchaseController$$ExternalSyntheticLambda1
            @Override // com.appsgeyser.sdk.AppsgeyserSDK.OnAccessDataEnableListener
            public final void onAccessDataEnable(String str) {
                PurchaseController.this.m236xe6348f75(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$registerAccessDataListener$0$com-appsgeyser-sdk-inapp-PurchaseController  reason: not valid java name */
    public /* synthetic */ void m236xe6348f75(String str) {
        if (str == null) {
            Log.e("PurchaseController", "Error to catch access data from config: no data");
        } else {
            this.accessData = AccessData.parseFromJson(Decoder.encrypt(str, this.wid, Decoder.VERIFIER_ACCESS));
        }
        Log.d("PurchaseController", "accessData = " + this.accessData);
        this.isAccessDataReceivingComplete = true;
        initBilling();
    }

    private void registerDisableAdsDataListener() {
        AppsgeyserSDK.isDisableAdsDataEnable(this.context, new AppsgeyserSDK.OnDisableAdsDataEnableListener() { // from class: com.appsgeyser.sdk.inapp.PurchaseController$$ExternalSyntheticLambda0
            @Override // com.appsgeyser.sdk.AppsgeyserSDK.OnDisableAdsDataEnableListener
            public final void onDisableAdsDataEnable(String str) {
                PurchaseController.this.m237x5296d43a(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$registerDisableAdsDataListener$1$com-appsgeyser-sdk-inapp-PurchaseController  reason: not valid java name */
    public /* synthetic */ void m237x5296d43a(String str) {
        if (str == null) {
            Log.e("PurchaseController", "Error to catch disable ads data from config: no data");
        } else {
            this.disableAdsData = DisableAdsData.parseFromJson(Decoder.encrypt(str, this.wid, Decoder.VERIFIER_DISABLE_ADS));
        }
        Log.d("PurchaseController", "disableAdsData = " + this.disableAdsData);
        this.isDisableAdsDataReceivingComplete = true;
        initBilling();
    }

    private void initBilling() {
        if (this.isDisableAdsDataReceivingComplete && this.isAccessDataReceivingComplete) {
            ArrayList arrayList = new ArrayList();
            AccessData accessData = this.accessData;
            if (accessData != null) {
                if (accessData.isActive()) {
                    if (isInappKeyValid(this.accessData)) {
                        arrayList.add(this.accessData.getInappKey());
                    } else {
                        this.accessStatusSubject.onNext(new ErrorStatus.ConfigErrorStatus("Invalid access inapp key data"));
                        Log.e("PurchaseController", "Invalid access inapp key data");
                    }
                } else {
                    this.accessStatusSubject.onNext(new SuccessStatus(null, null, false, false));
                }
            } else {
                Log.e("PurchaseController", "Invalid config access data");
                this.accessStatusSubject.onNext(new ErrorStatus.ConfigErrorStatus("Invalid config access data"));
            }
            DisableAdsData disableAdsData = this.disableAdsData;
            if (disableAdsData != null) {
                if (disableAdsData.isActive()) {
                    if (isInappKeyValid(this.disableAdsData)) {
                        arrayList.add(this.disableAdsData.getInappKey());
                    } else {
                        this.disableAdsStatusSubject.onNext(new ErrorStatus.ConfigErrorStatus("Invalid disable ads inapp key data"));
                        Log.e("PurchaseController", "Invalid disable ads inapp key data");
                    }
                } else {
                    this.disableAdsStatusSubject.onNext(new SuccessStatus(null, null, false, false));
                }
            } else {
                Log.e("PurchaseController", "Invalid config disableAds data");
                this.disableAdsStatusSubject.onNext(new ErrorStatus.ConfigErrorStatus("Invalid config disableAds data"));
            }
            if (arrayList.isEmpty()) {
                return;
            }
            this.billingAdapter = new BillingAdapter(this.context, arrayList, "inapp", new BillingListener());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInappKeyValid(ConfigInappData configInappData) {
        return (configInappData == null || configInappData.getInappKey() == null || configInappData.getInappKey().equals("")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isComplete(BehaviorSubject<Status> behaviorSubject) {
        return behaviorSubject.getValue() instanceof SuccessStatus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class BillingListener implements BillingAdapter.BillingEventListener {
        private BillingListener() {
        }

        @Override // com.appsgeyser.sdk.inapp.billing.BillingAdapter.BillingEventListener
        public void onProductReceiveSuccess(List<BillingProduct> list) {
            for (BillingProduct billingProduct : list) {
                if (billingProduct.getId().equals(PurchaseController.this.accessData.getInappKey())) {
                    if (billingProduct.isPurchased()) {
                        PurchaseController.this.accessStatusSubject.onNext(new SuccessStatus(billingProduct, PurchaseController.this.accessData, true, true));
                    } else {
                        PurchaseController.this.accessStatusSubject.onNext(new SuccessStatus(billingProduct, PurchaseController.this.accessData, true, false));
                    }
                    PurchaseController.this.sendSuccessProductLoadedStatRequest(StatController.KEY_INAPP_ACCESS_PRODUCT_LOADED);
                }
                if (billingProduct.getId().equals(PurchaseController.this.disableAdsData.getInappKey())) {
                    if (billingProduct.isPurchased()) {
                        PurchaseController.this.disableAdsStatusSubject.onNext(new SuccessStatus(billingProduct, PurchaseController.this.disableAdsData, true, true));
                        DisableAdsSharedPrefs.getInstance().saveDisableAdsPurchaseFlag(true);
                    } else {
                        PurchaseController.this.disableAdsStatusSubject.onNext(new SuccessStatus(billingProduct, PurchaseController.this.disableAdsData, true, false));
                        DisableAdsSharedPrefs.getInstance().saveDisableAdsPurchaseFlag(false);
                    }
                    PurchaseController.this.sendSuccessProductLoadedStatRequest(StatController.KEY_INAPP_DISABLE_ADS_PRODUCT_LOADED);
                }
            }
        }

        @Override // com.appsgeyser.sdk.inapp.billing.BillingAdapter.BillingEventListener
        public void onProductReceiveError(String str) {
            Log.e("PurchaseController", "Receiving products error, message: \"" + str + "\"");
            PurchaseController purchaseController = PurchaseController.this;
            if (!purchaseController.isComplete(purchaseController.accessStatusSubject)) {
                PurchaseController.this.accessStatusSubject.onNext(new ErrorStatus.BillingErrorStatus("Receiving products error, message: \"" + str + "\""));
            }
            PurchaseController purchaseController2 = PurchaseController.this;
            if (purchaseController2.isComplete(purchaseController2.disableAdsStatusSubject)) {
                return;
            }
            PurchaseController.this.disableAdsStatusSubject.onNext(new ErrorStatus.BillingErrorStatus("Receiving products error, message: \"" + str + "\""));
        }

        @Override // com.appsgeyser.sdk.inapp.billing.BillingAdapter.BillingEventListener
        public void onPurchaseSuccess(final String str, final String str2, final String str3) {
            Log.d("PurchaseController", "PurchaseController onPurchaseSuccess inappKey = " + str3);
            new Handler(PurchaseController.this.context.getMainLooper()).post(new Runnable() { // from class: com.appsgeyser.sdk.inapp.PurchaseController$BillingListener$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PurchaseController.BillingListener.this.m238x79951144(str3, str, str2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onPurchaseSuccess$0$com-appsgeyser-sdk-inapp-PurchaseController$BillingListener  reason: not valid java name */
        public /* synthetic */ void m238x79951144(String str, String str2, String str3) {
            PurchaseController purchaseController = PurchaseController.this;
            if (purchaseController.isInappKeyValid(purchaseController.disableAdsData) && str.equals(PurchaseController.this.disableAdsData.getInappKey())) {
                DisableAdsSharedPrefs.getInstance().saveDisableAdsPurchaseFlag(true);
                PurchaseController.this.disableAdsStatusSubject.onNext(new SuccessStatus(null, PurchaseController.this.disableAdsData, true, true));
            }
            PurchaseController purchaseController2 = PurchaseController.this;
            if (purchaseController2.isInappKeyValid(purchaseController2.accessData) && str.equals(PurchaseController.this.accessData.getInappKey())) {
                PurchaseController.this.accessStatusSubject.onNext(new SuccessStatus(null, PurchaseController.this.accessData, true, true));
            }
            PurchaseController.this.purchaseListener.onSuccessPurchase();
            PurchaseController.this.sendSuccessPurchaseStatRequest(str2, str3, str);
        }

        @Override // com.appsgeyser.sdk.inapp.billing.BillingAdapter.BillingEventListener
        public void onPurchaseError(int i, String str) {
            if (i != 1) {
                Log.e("PurchaseController", "Purchase error, code: " + i + ", message: " + str);
                PurchaseController.this.purchaseListener.onErrorPurchase("Purchase error, code: " + i + ", message: " + str);
            }
        }

        @Override // com.appsgeyser.sdk.inapp.billing.BillingAdapter.BillingEventListener
        public void onConnectionError() {
            Log.e("PurchaseController", "Connection to Google Billing failed");
            PurchaseController purchaseController = PurchaseController.this;
            if (!purchaseController.isComplete(purchaseController.accessStatusSubject)) {
                PurchaseController.this.accessStatusSubject.onNext(new ErrorStatus.BillingErrorStatus("Connection to Google Billing failed"));
            }
            PurchaseController purchaseController2 = PurchaseController.this;
            if (purchaseController2.isComplete(purchaseController2.disableAdsStatusSubject)) {
                return;
            }
            PurchaseController.this.disableAdsStatusSubject.onNext(new ErrorStatus.BillingErrorStatus("Connection to Google Billing failed"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSuccessPurchaseStatRequest(String str, String str2, String str3) {
        String str4;
        if (isInappKeyValid(this.accessData) && str3.equals(this.accessData.getInappKey())) {
            Log.d("PurchaseController", "PurchaseController send Access events");
            str4 = StatController.KEY_INAPP_ACCESS_NEW_PURCHASE;
        } else if (isInappKeyValid(this.disableAdsData) && str3.equals(this.disableAdsData.getInappKey())) {
            Log.d("PurchaseController", "PurchaseController send Disable Ads events");
            str4 = StatController.KEY_INAPP_DISABLE_ADS_NEW_PURCHASE;
        } else {
            Log.d("PurchaseController", "PurchaseController events not sended");
            return;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("value", str);
        hashMap.put("currency", str2);
        StatController.getInstance().sendRequestAsyncByKey(str4, hashMap, this.context, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSuccessProductLoadedStatRequest(String str) {
        String prefString = new PreferencesCoder(this.context).getPrefString(Constants.PREFS_SERVER_RESPONSE, null);
        if (prefString != null) {
            StatController.getInstance().init(new HashMap<>(ConfigPhp.parseFromJson(prefString).getStatUrls()));
            StatController.getInstance().sendRequestAsyncByKey(str);
        }
    }
}

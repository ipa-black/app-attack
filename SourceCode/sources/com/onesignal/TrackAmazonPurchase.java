package com.onesignal;

import android.content.Context;
import com.amazon.device.iap.PurchasingListener;
import com.amazon.device.iap.PurchasingService;
import com.amazon.device.iap.model.Product;
import com.amazon.device.iap.model.ProductDataResponse;
import com.amazon.device.iap.model.PurchaseResponse;
import com.amazon.device.iap.model.PurchaseUpdatesResponse;
import com.amazon.device.iap.model.RequestId;
import com.amazon.device.iap.model.UserDataResponse;
import com.applovin.sdk.AppLovinEventParameters;
import com.appnext.base.b.f;
import com.ironsource.sdk.c.d;
import com.onesignal.OneSignal;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class TrackAmazonPurchase {
    private boolean canTrack;
    private Context context;
    private Field listenerHandlerField;
    private Object listenerHandlerObject;
    private OSPurchasingListener osPurchasingListener;
    private boolean registerListenerOnMainThread;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TrackAmazonPurchase(Context context) {
        this.canTrack = false;
        this.registerListenerOnMainThread = false;
        this.context = context;
        try {
            Class<?> cls = Class.forName("com.amazon.device.iap.internal.d");
            try {
                this.listenerHandlerObject = cls.getMethod(d.f11571a, new Class[0]).invoke(null, new Object[0]);
            } catch (NullPointerException unused) {
                this.listenerHandlerObject = cls.getMethod("e", new Class[0]).invoke(null, new Object[0]);
                this.registerListenerOnMainThread = true;
            }
            Field declaredField = cls.getDeclaredField(f.TAG);
            this.listenerHandlerField = declaredField;
            declaredField.setAccessible(true);
            OSPurchasingListener oSPurchasingListener = new OSPurchasingListener();
            this.osPurchasingListener = oSPurchasingListener;
            oSPurchasingListener.orgPurchasingListener = (PurchasingListener) this.listenerHandlerField.get(this.listenerHandlerObject);
            this.canTrack = true;
            setListener();
        } catch (ClassCastException e2) {
            logAmazonIAPListenerError(e2);
        } catch (ClassNotFoundException e3) {
            logAmazonIAPListenerError(e3);
        } catch (IllegalAccessException e4) {
            logAmazonIAPListenerError(e4);
        } catch (NoSuchFieldException e5) {
            logAmazonIAPListenerError(e5);
        } catch (NoSuchMethodException e6) {
            logAmazonIAPListenerError(e6);
        } catch (InvocationTargetException e7) {
            logAmazonIAPListenerError(e7);
        }
    }

    private static void logAmazonIAPListenerError(Exception exc) {
        OneSignal.Log(OneSignal.LOG_LEVEL.ERROR, "Error adding Amazon IAP listener.", exc);
        exc.printStackTrace();
    }

    private void setListener() {
        if (this.registerListenerOnMainThread) {
            OSUtils.runOnMainUIThread(new Runnable() { // from class: com.onesignal.TrackAmazonPurchase.1
                @Override // java.lang.Runnable
                public void run() {
                    PurchasingService.registerListener(TrackAmazonPurchase.this.context, TrackAmazonPurchase.this.osPurchasingListener);
                }
            });
        } else {
            PurchasingService.registerListener(this.context, this.osPurchasingListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void checkListener() {
        if (this.canTrack) {
            try {
                PurchasingListener purchasingListener = (PurchasingListener) this.listenerHandlerField.get(this.listenerHandlerObject);
                OSPurchasingListener oSPurchasingListener = this.osPurchasingListener;
                if (purchasingListener != oSPurchasingListener) {
                    oSPurchasingListener.orgPurchasingListener = purchasingListener;
                    setListener();
                }
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class OSPurchasingListener implements PurchasingListener {
        private String currentMarket;
        private RequestId lastRequestId;
        PurchasingListener orgPurchasingListener;

        private OSPurchasingListener() {
        }

        private String marketToCurrencyCode(String str) {
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case 2100:
                    if (str.equals("AU")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 2128:
                    if (str.equals("BR")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 2142:
                    if (str.equals("CA")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 2177:
                    if (str.equals("DE")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 2222:
                    if (str.equals("ES")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 2252:
                    if (str.equals("FR")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 2267:
                    if (str.equals("GB")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 2347:
                    if (str.equals("IT")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 2374:
                    if (str.equals("JP")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 2718:
                    if (str.equals("US")) {
                        c2 = '\t';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    return "AUD";
                case 1:
                    return "BRL";
                case 2:
                    return "CDN";
                case 3:
                case 4:
                case 5:
                case 7:
                    return "EUR";
                case 6:
                    return "GBP";
                case '\b':
                    return "JPY";
                case '\t':
                    return "USD";
                default:
                    return "";
            }
        }

        public void onProductDataResponse(ProductDataResponse productDataResponse) {
            RequestId requestId = this.lastRequestId;
            if (requestId != null && requestId.toString().equals(productDataResponse.getRequestId().toString())) {
                try {
                    if (AnonymousClass2.$SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus[productDataResponse.getRequestStatus().ordinal()] != 1) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray();
                    Map productData = productDataResponse.getProductData();
                    for (String str : productData.keySet()) {
                        Product product = (Product) productData.get(str);
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, product.getSku());
                        jSONObject.put("iso", marketToCurrencyCode(this.currentMarket));
                        String price = product.getPrice();
                        if (!price.matches("^[0-9]")) {
                            price = price.substring(1);
                        }
                        jSONObject.put(AppLovinEventParameters.REVENUE_AMOUNT, price);
                        jSONArray.put(jSONObject);
                    }
                    OneSignal.sendPurchases(jSONArray, false, null);
                    return;
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            PurchasingListener purchasingListener = this.orgPurchasingListener;
            if (purchasingListener != null) {
                purchasingListener.onProductDataResponse(productDataResponse);
            }
        }

        public void onPurchaseResponse(PurchaseResponse purchaseResponse) {
            if (purchaseResponse.getRequestStatus() == PurchaseResponse.RequestStatus.SUCCESSFUL) {
                this.currentMarket = purchaseResponse.getUserData().getMarketplace();
                HashSet hashSet = new HashSet();
                hashSet.add(purchaseResponse.getReceipt().getSku());
                this.lastRequestId = PurchasingService.getProductData(hashSet);
            }
            PurchasingListener purchasingListener = this.orgPurchasingListener;
            if (purchasingListener != null) {
                purchasingListener.onPurchaseResponse(purchaseResponse);
            }
        }

        public void onPurchaseUpdatesResponse(PurchaseUpdatesResponse purchaseUpdatesResponse) {
            PurchasingListener purchasingListener = this.orgPurchasingListener;
            if (purchasingListener != null) {
                purchasingListener.onPurchaseUpdatesResponse(purchaseUpdatesResponse);
            }
        }

        public void onUserDataResponse(UserDataResponse userDataResponse) {
            PurchasingListener purchasingListener = this.orgPurchasingListener;
            if (purchasingListener != null) {
                purchasingListener.onUserDataResponse(userDataResponse);
            }
        }
    }

    /* renamed from: com.onesignal.TrackAmazonPurchase$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus;

        static {
            int[] iArr = new int[ProductDataResponse.RequestStatus.values().length];
            $SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus = iArr;
            try {
                iArr[ProductDataResponse.RequestStatus.SUCCESSFUL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }
}

package com.appsgeyser.sdk.inapp.billing;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchasesParams;
import com.appsgeyser.sdk.inapp.models.BillingProduct;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class BillingAdapter {
    public static final String TAG = "BillingAdapter";
    private final BillingClient billingClient;
    private BillingEventListener eventListener;
    private final List<String> inappList;
    private List<ProductDetails> productList;
    private final String productsType;
    private List<Purchase> purchaseList;
    private ProductDetails purchasedProduct;

    /* loaded from: classes2.dex */
    public interface BillingEventListener {
        void onConnectionError();

        void onProductReceiveError(String str);

        void onProductReceiveSuccess(List<BillingProduct> list);

        void onPurchaseError(int i, String str);

        void onPurchaseSuccess(String str, String str2, String str3);
    }

    public BillingAdapter(Context context, List<String> list, String str, BillingEventListener billingEventListener) {
        this.eventListener = billingEventListener;
        this.inappList = list;
        this.productsType = str;
        BillingClient build = BillingClient.newBuilder(context).setListener(new PurchasesListener()).enablePendingPurchases().build();
        this.billingClient = build;
        build.startConnection(new BillingStateListener());
    }

    public void purchase(Activity activity, String str) {
        List<ProductDetails> list = this.productList;
        if (list == null) {
            this.eventListener.onPurchaseError(0, "product list is empty");
            return;
        }
        ProductDetails productDetails = null;
        for (ProductDetails productDetails2 : list) {
            if (productDetails2.getProductId().equals(str)) {
                productDetails = productDetails2;
            }
        }
        if (productDetails == null) {
            Log.e(TAG, "ПРИ ПОКУПКИ ПЕРЕДАН НЕПРАВЛЬНЫЙ ИДЕНТИФИКАТОР ТОВАРА");
            return;
        }
        this.purchasedProduct = productDetails;
        this.billingClient.launchBillingFlow(activity, BillingFlowParams.newBuilder().setProductDetailsParamsList(Collections.singletonList(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build())).build());
        Log.d(TAG, getValue(getPrice(productDetails.getOneTimePurchaseOfferDetails())));
        Log.d(TAG, getCurrency(getPrice(productDetails.getOneTimePurchaseOfferDetails())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initBilling() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.inappList) {
            arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId(str).setProductType(this.productsType).build());
        }
        QueryProductDetailsParams build = QueryProductDetailsParams.newBuilder().setProductList(arrayList).build();
        this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(this.productsType).build(), new PurchaseResponseListener());
        this.billingClient.queryProductDetailsAsync(build, new ProductResponseListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void createBillingProductList() {
        List<ProductDetails> list = this.productList;
        if (list != null && this.purchaseList != null) {
            if (list.size() == 0) {
                this.eventListener.onProductReceiveError("ПРИШЛИ ПУСТЫЕ СПИСКИ ТОВАРОВ");
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (ProductDetails productDetails : this.productList) {
                boolean z = false;
                for (Purchase purchase : this.purchaseList) {
                    if (purchase.getProducts().get(0).equals(productDetails.getProductId())) {
                        z = true;
                    }
                }
                arrayList.add(new BillingProduct(getPrice(productDetails.getOneTimePurchaseOfferDetails()), productDetails.getProductId(), productDetails.getName(), productDetails.getDescription(), z));
            }
            this.eventListener.onProductReceiveSuccess(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acknowledgePurchase(Purchase purchase) {
        if (purchase.getPurchaseState() != 1 || purchase.isAcknowledged()) {
            return;
        }
        this.billingClient.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new AcknowledgeResponseListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getValue(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isDigit(charAt) || charAt == ',' || charAt == '.') {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrency(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!Character.isDigit(charAt) && charAt != ',' && charAt != '.' && charAt != 160 && !Character.isWhitespace(charAt)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class AcknowledgeResponseListener implements AcknowledgePurchaseResponseListener {
        private AcknowledgeResponseListener() {
        }

        @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
        public void onAcknowledgePurchaseResponse(BillingResult billingResult) {
            Log.e(BillingAdapter.TAG, "onAcknowledgePurchaseResponse billingResultCode = " + billingResult.getResponseCode() + " message = " + billingResult.getDebugMessage());
            if (billingResult.getResponseCode() == 0) {
                BillingAdapter billingAdapter = BillingAdapter.this;
                String price = billingAdapter.getPrice(billingAdapter.purchasedProduct.getOneTimePurchaseOfferDetails());
                BillingAdapter.this.eventListener.onPurchaseSuccess(BillingAdapter.this.getValue(price), BillingAdapter.this.getCurrency(price), BillingAdapter.this.purchasedProduct.getProductId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class PurchaseResponseListener implements PurchasesResponseListener {
        private PurchaseResponseListener() {
        }

        @Override // com.android.billingclient.api.PurchasesResponseListener
        public void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> list) {
            Log.w(BillingAdapter.TAG, "onQueryPurchasesResponse");
            Log.w(BillingAdapter.TAG, "billingResult = " + billingResult);
            if (billingResult.getResponseCode() == 0) {
                BillingAdapter.this.purchaseList = list;
                BillingAdapter.this.createBillingProductList();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ProductResponseListener implements ProductDetailsResponseListener {
        private ProductResponseListener() {
        }

        @Override // com.android.billingclient.api.ProductDetailsResponseListener
        public void onProductDetailsResponse(BillingResult billingResult, List<ProductDetails> list) {
            Log.e(BillingAdapter.TAG, "onProductDetailsResponse = " + billingResult.getResponseCode());
            if (billingResult.getResponseCode() == 0) {
                BillingAdapter.this.productList = list;
                BillingAdapter.this.createBillingProductList();
                Log.e(BillingAdapter.TAG, "List size = " + list.size());
            }
        }
    }

    /* loaded from: classes2.dex */
    private class BillingStateListener implements BillingClientStateListener {
        private BillingStateListener() {
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingServiceDisconnected() {
            Log.e(BillingAdapter.TAG, "onBillingServiceDisconnected");
            BillingAdapter.this.eventListener.onConnectionError();
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingSetupFinished(BillingResult billingResult) {
            if (billingResult.getResponseCode() != 0) {
                BillingAdapter.this.eventListener.onConnectionError();
                return;
            }
            Log.d(BillingAdapter.TAG, "onBillingSetupFinished CONNECTION SUCCESS!");
            BillingAdapter.this.initBilling();
        }
    }

    /* loaded from: classes2.dex */
    private class PurchasesListener implements PurchasesUpdatedListener {
        private PurchasesListener() {
        }

        @Override // com.android.billingclient.api.PurchasesUpdatedListener
        public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
            Log.d(BillingAdapter.TAG, "onPurchasesUpdated responseCode = " + billingResult.getResponseCode());
            if (billingResult.getResponseCode() != 0) {
                BillingAdapter.this.eventListener.onPurchaseError(billingResult.getResponseCode(), billingResult.getDebugMessage());
                return;
            }
            Log.d(BillingAdapter.TAG, "onPurchasesUpdated list == null -> = " + (list == null));
            if (list != null) {
                BillingAdapter.this.acknowledgePurchase(list.get(list.size() - 1));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPrice(ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails) {
        if (oneTimePurchaseOfferDetails != null) {
            return oneTimePurchaseOfferDetails.getFormattedPrice();
        }
        return "???";
    }
}

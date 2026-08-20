package com.appsgeyser.sdk.inapp.ui;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.appsgeyser.sdk.R;
import com.appsgeyser.sdk.inapp.PurchaseController;
import com.appsgeyser.sdk.inapp.models.BillingProduct;
import com.appsgeyser.sdk.inapp.models.configdata.AccessData;
import com.appsgeyser.sdk.inapp.models.statuses.ErrorStatus;
import com.appsgeyser.sdk.inapp.models.statuses.LoadingStatus;
import com.appsgeyser.sdk.inapp.models.statuses.Status;
import com.appsgeyser.sdk.inapp.models.statuses.SuccessStatus;
import com.appsgeyser.sdk.inapp.ui.AccessActivity;
import com.google.android.material.snackbar.Snackbar;
import rx.functions.Action1;
/* loaded from: classes2.dex */
public class AccessActivity extends AppCompatActivity {
    private AccessData accessData;
    private TextView appNameText;
    private Button buyButton;
    private TextView descriptionText;
    private View mainBg;
    private TextView priceText;
    private ProgressBar progressBar;
    private ImageView screenIcon;
    private TextView titleText;

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.appsgeysersdk_activity_access);
        initView();
        hideUi();
        showProgress();
        PurchaseController.getInstance().subscribeAccessStatus(new Action1() { // from class: com.appsgeyser.sdk.inapp.ui.AccessActivity$$ExternalSyntheticLambda0
            @Override // rx.functions.Action1
            public final void call(Object obj) {
                AccessActivity.this.m240lambda$onCreate$1$comappsgeysersdkinappuiAccessActivity((Status) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$1$com-appsgeyser-sdk-inapp-ui-AccessActivity  reason: not valid java name */
    public /* synthetic */ void m240lambda$onCreate$1$comappsgeysersdkinappuiAccessActivity(final Status status) {
        runOnUiThread(new Runnable() { // from class: com.appsgeyser.sdk.inapp.ui.AccessActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AccessActivity.this.m239lambda$onCreate$0$comappsgeysersdkinappuiAccessActivity(status);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$0$com-appsgeyser-sdk-inapp-ui-AccessActivity  reason: not valid java name */
    public /* synthetic */ void m239lambda$onCreate$0$comappsgeysersdkinappuiAccessActivity(Status status) {
        if (status instanceof LoadingStatus) {
            hideUi();
            showProgress();
        } else if (status instanceof ErrorStatus) {
            hideUi();
            hideProgress();
            showErrorMessage();
        } else if (status instanceof SuccessStatus) {
            SuccessStatus successStatus = (SuccessStatus) status;
            if (!successStatus.isFeatureActive() || successStatus.isFeaturePurchased()) {
                finish();
                return;
            }
            this.accessData = (AccessData) successStatus.getConfigData();
            hideProgress();
            showUi();
            updateView(successStatus.getProduct());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showErrorMessage() {
        Snackbar.make(this.buyButton, "Sorry, connection failed.", 0).show();
        hideProgress();
    }

    private void initView() {
        this.buyButton = (Button) findViewById(R.id.buy_button);
        this.mainBg = findViewById(R.id.main_background);
        this.priceText = (TextView) findViewById(R.id.price_text);
        this.progressBar = (ProgressBar) findViewById(R.id.progress_bar);
        this.appNameText = (TextView) findViewById(R.id.application_name_text);
        this.screenIcon = (ImageView) findViewById(R.id.screen_icon);
        this.descriptionText = (TextView) findViewById(R.id.description);
        this.titleText = (TextView) findViewById(R.id.title);
        int intExtra = getIntent().getIntExtra("iconId", 0);
        if (intExtra != 0) {
            this.screenIcon.setImageResource(intExtra);
        }
    }

    private void updateView(BillingProduct billingProduct) {
        this.buyButton.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.sdk.inapp.ui.AccessActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccessActivity.this.m241lambda$updateView$2$comappsgeysersdkinappuiAccessActivity(view);
            }
        });
        this.buyButton.setText(this.accessData.getButtonText());
        this.buyButton.setBackgroundColor(stringToColorInt(this.accessData.getButtonTintColor()));
        this.mainBg.setBackgroundColor(stringToColorInt(this.accessData.getBackgroundColor()));
        this.buyButton.setTextColor(stringToColorInt(this.accessData.getButtonTextColor()));
        this.priceText.setText(getString(R.string.price_sub_text, new Object[]{billingProduct.getPrice()}));
        this.descriptionText.setText(billingProduct.getDescription());
        this.titleText.setText(billingProduct.getTitle());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateView$2$com-appsgeyser-sdk-inapp-ui-AccessActivity  reason: not valid java name */
    public /* synthetic */ void m241lambda$updateView$2$comappsgeysersdkinappuiAccessActivity(View view) {
        AccessData accessData = this.accessData;
        if (accessData != null && !accessData.isAllowPurchases()) {
            showPurchaseNotAllowDialog();
        } else {
            purchase();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.inapp.ui.AccessActivity$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements PurchaseController.PurchaseListener {
        AnonymousClass1() {
        }

        @Override // com.appsgeyser.sdk.inapp.PurchaseController.PurchaseListener
        public void onSuccessPurchase() {
            AccessActivity.this.runOnUiThread(new Runnable() { // from class: com.appsgeyser.sdk.inapp.ui.AccessActivity$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AccessActivity.AnonymousClass1.this.m243xc7bfcb5b();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onSuccessPurchase$0$com-appsgeyser-sdk-inapp-ui-AccessActivity$1  reason: not valid java name */
        public /* synthetic */ void m243xc7bfcb5b() {
            AccessActivity.this.finish();
        }

        @Override // com.appsgeyser.sdk.inapp.PurchaseController.PurchaseListener
        public void onErrorPurchase(String str) {
            AccessActivity.this.runOnUiThread(new Runnable() { // from class: com.appsgeyser.sdk.inapp.ui.AccessActivity$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AccessActivity.AnonymousClass1.this.m242xc769b455();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onErrorPurchase$1$com-appsgeyser-sdk-inapp-ui-AccessActivity$1  reason: not valid java name */
        public /* synthetic */ void m242xc769b455() {
            AccessActivity.this.showErrorMessage();
        }
    }

    private void purchase() {
        PurchaseController.getInstance().purchaseAccess(this, new AnonymousClass1());
    }

    private int stringToColorInt(String str) {
        if (str == null || str.isEmpty()) {
            return -16776961;
        }
        if (str.contains("#")) {
            return Color.parseColor(str);
        }
        return Color.parseColor("#" + str);
    }

    private void hideProgress() {
        this.progressBar.setVisibility(8);
    }

    private void showProgress() {
        this.progressBar.setVisibility(0);
    }

    private void hideUi() {
        this.buyButton.setVisibility(8);
        this.priceText.setVisibility(8);
        this.screenIcon.setVisibility(8);
        this.appNameText.setVisibility(8);
        this.descriptionText.setVisibility(8);
        this.titleText.setVisibility(8);
    }

    private void showUi() {
        this.buyButton.setVisibility(0);
        this.priceText.setVisibility(0);
        this.screenIcon.setVisibility(0);
        this.appNameText.setVisibility(0);
        this.descriptionText.setVisibility(0);
        this.titleText.setVisibility(0);
    }

    private void showPurchaseNotAllowDialog() {
        new AlertDialog.Builder(this).setTitle(R.string.purchase_error).setMessage(R.string.purchase_not_allow_message).setCancelable(true).setPositiveButton(R.string.tt_label_ok, (DialogInterface.OnClickListener) null).create().show();
    }
}

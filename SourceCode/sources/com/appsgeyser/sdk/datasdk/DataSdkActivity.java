package com.appsgeyser.sdk.datasdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.R;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.server.StatController;
/* loaded from: classes2.dex */
public class DataSdkActivity extends AppCompatActivity {
    private static final String CONFIG_PHP_KEY = "com.appsgeyser.sdk.permission.DataSdkActivity.configPhp";
    private static final String DATA_SDK_DIALOG_ACCEPT = "Accept";
    private static final String DATA_SDK_DIALOG_DECLINE = "Decline";
    private static final String ENCODING = "UTF-8";
    private static final String MIME_TYPE = "text/html";
    static final int PERMISSIONS_CALLBACK_CODE = 78;
    private static final String PERMISSION_ACTIVITY = "com.appsgeyser.sdk.permission.DataSdkActivity";
    private static final String TEXT_OF_POLICY_KEY = "com.appsgeyser.sdk.permission.DataSdkActivity.textOfPolicy";
    private ConfigPhp configPhp;
    private AppCompatActivity dataActivity;

    public static void startRequestPermissions(Context context, ConfigPhp configPhp, String str) {
        if (PermissionsRequester.isPermissionsRequired(configPhp, context) || (!DataSdkController.isSdkAccepted(context) && !TextUtils.isEmpty(str))) {
            Intent intent = new Intent(context, DataSdkActivity.class);
            intent.setFlags(268435456);
            if (!TextUtils.isEmpty(str)) {
                intent.putExtra(TEXT_OF_POLICY_KEY, str);
            }
            intent.putExtra(CONFIG_PHP_KEY, configPhp);
            context.startActivity(intent);
            return;
        }
        DataSdkController.initSdk(configPhp, context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.dataActivity = this;
        Intent intent = getIntent();
        if (intent != null) {
            this.configPhp = (ConfigPhp) intent.getParcelableExtra(CONFIG_PHP_KEY);
            String stringExtra = intent.getStringExtra(TEXT_OF_POLICY_KEY);
            if (!TextUtils.isEmpty(stringExtra)) {
                ConfigPhp configPhp = this.configPhp;
                if (configPhp != null) {
                    showEulaDialog(stringExtra, configPhp);
                }
            } else if (PermissionsRequester.isPermissionsRequired(this.configPhp, this)) {
                PermissionsRequester.requestAllActivePermissions(this, this.configPhp, 78);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        boolean z;
        if (78 == i) {
            try {
                int length = strArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    String str = strArr[i2];
                    int i3 = iArr[i2];
                    StatController statController = StatController.getInstance();
                    switch (str.hashCode()) {
                        case -1888586689:
                            if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                                z = false;
                                break;
                            }
                            z = true;
                            break;
                        case -406040016:
                            if (str.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -63024214:
                            if (str.equals("android.permission.ACCESS_COARSE_LOCATION")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -5573545:
                            if (str.equals("android.permission.READ_PHONE_STATE")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1271781903:
                            if (str.equals("android.permission.GET_ACCOUNTS")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1365911975:
                            if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                    if (z) {
                        if (!z) {
                            if (!z) {
                                if (!z) {
                                    if (!z) {
                                        if (z) {
                                            if (i3 == 0) {
                                                statController.sendRequestAsyncByKey(StatController.KEY_CLICK_ACCEPT_PERMISSION_READ_EXTERNAL_STORAGE);
                                            } else if (i3 == -1) {
                                                statController.sendRequestAsyncByKey(StatController.KEY_CLICK_DECLINE_PERMISSION_READ_EXTERNAL_STORAGE);
                                            }
                                        }
                                    } else if (i3 == 0) {
                                        statController.sendRequestAsyncByKey(StatController.KEY_CLICK_ACCEPT_PERMISSION_WRITE_EXTERNAL_STORAGE);
                                    } else if (i3 == -1) {
                                        statController.sendRequestAsyncByKey(StatController.KEY_CLICK_DECLINE_PERMISSION_WRITE_EXTERNAL_STORAGE);
                                    }
                                } else if (i3 == 0) {
                                    statController.sendRequestAsyncByKey(StatController.KEY_CLICK_ACCEPT_PERMISSION_ACCESS_COARSE_LOCATION);
                                } else if (i3 == -1) {
                                    statController.sendRequestAsyncByKey(StatController.KEY_CLICK_DECLINE_PERMISSION_ACCESS_COARSE_LOCATION);
                                }
                            } else if (i3 == 0) {
                                statController.sendRequestAsyncByKey(StatController.KEY_CLICK_ACCEPT_PERMISSION_READ_PHONE_STATE);
                            } else if (i3 == -1) {
                                statController.sendRequestAsyncByKey(StatController.KEY_CLICK_DECLINE_PERMISSION_READ_PHONE_STATE);
                            }
                        } else if (i3 == 0) {
                            statController.sendRequestAsyncByKey(StatController.KEY_CLICK_ACCEPT_PERMISSION_GET_ACCOUNTS);
                        } else if (i3 == -1) {
                            statController.sendRequestAsyncByKey(StatController.KEY_CLICK_DECLINE_PERMISSION_GET_ACCOUNTS);
                        }
                    } else if (i3 == 0) {
                        statController.sendRequestAsyncByKey(StatController.KEY_CLICK_ACCEPT_PERMISSION_ACCESS_FINE_LOCATION);
                    } else if (i3 == -1) {
                        statController.sendRequestAsyncByKey(StatController.KEY_CLICK_DECLINE_PERMISSION_ACCESS_FINE_LOCATION);
                    }
                }
            } finally {
                ConfigPhp configPhp = this.configPhp;
                if (configPhp != null) {
                    DataSdkController.initSdk(configPhp, this);
                }
                finish();
            }
        }
    }

    public void showEulaDialog(final String str, final ConfigPhp configPhp) {
        View inflate = getLayoutInflater().inflate(R.layout.appsgeysersdk_datasdk_dialog, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.appsgeysersdk_datasdk_dialog_title)).setText(getString(R.string.appsgeysersdk_eula_title));
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(this, R.style.MaterialAlertDialog));
        builder.setCancelable(false);
        ((TextView) inflate.findViewById(R.id.appsgeysersdk_datasdk_dialog_accept)).setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.sdk.datasdk.DataSdkActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DataSdkActivity.this.m234x396d8196(configPhp, this, view);
            }
        });
        ((TextView) inflate.findViewById(R.id.appsgeysersdk_datasdk_dialog_decline)).setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.sdk.datasdk.DataSdkActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DataSdkActivity.this.m235xfc59eaf5(this, configPhp, str, view);
            }
        });
        AlertDialog create = builder.create();
        WebView webView = (WebView) inflate.findViewById(R.id.appsgeysersdk_datasdk_dialog_web_view);
        webView.loadData(new StringBuilder(str).insert(0, configPhp.getEulaBeginning() != null ? configPhp.getEulaBeginning() : "").toString(), MIME_TYPE, "UTF-8");
        webView.setScrollbarFadingEnabled(false);
        new PreferencesCoder(this).savePrefLong(DataSdkController.PREFS_ELAPSED_TIME, 0L);
        create.setView(inflate);
        create.show();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        if (create.getWindow() != null) {
            layoutParams.copyFrom(create.getWindow().getAttributes());
            layoutParams.width = -1;
            layoutParams.height = -1;
            create.getWindow().setAttributes(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showEulaDialog$0$com-appsgeyser-sdk-datasdk-DataSdkActivity  reason: not valid java name */
    public /* synthetic */ void m234x396d8196(ConfigPhp configPhp, Activity activity, View view) {
        if (PermissionsRequester.isPermissionsRequired(configPhp, activity)) {
            DataSdkController.acceptAllActiveSdk(activity, configPhp);
            PermissionsRequester.requestAllActivePermissions(activity, configPhp, 78);
            return;
        }
        DataSdkController.acceptAllActiveSdk(activity, configPhp);
        DataSdkController.initSdk(configPhp, activity);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$showEulaDialog$1$com-appsgeyser-sdk-datasdk-DataSdkActivity  reason: not valid java name */
    public /* synthetic */ void m235xfc59eaf5(Activity activity, ConfigPhp configPhp, String str, View view) {
        DataSdkController.declineAllActiveSdk(activity, configPhp, this.dataActivity, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AppsgeyserSDK.getFastTrackAdsController().showPendingFullscreen(null);
    }
}

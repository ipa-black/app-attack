package com.appsgeyser.multiTabApp.ui.views;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.pdfreader.PdfLoader;
import com.github.barteksc.pdfviewer.PDFView;
import com.w_19998775.R;
/* loaded from: classes2.dex */
public class PdfActivity extends AppCompatActivity {
    public static final String PATH_FILE = "path_file";
    public static final int PERMISSION_REQUEST_CODE = 112;
    public static final String WIDGET_ID = "widget_id";
    private PdfLoader pdfLoader;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.pdf_content);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(Factory.getInstance().getWidgetsController().getWidgetByTabId(getIntent().getStringExtra(WIDGET_ID)).getName());
        }
        this.pdfLoader = new PdfLoader((PDFView) findViewById(R.id.pdfView), getIntent().getStringExtra(PATH_FILE), null, Factory.getInstance().getTabsController().getSelectedTab().getWidgetInfo().getTabId());
        if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 112);
        } else {
            this.pdfLoader.loadPdfFile();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 112 && iArr.length > 0 && iArr[0] == 0) {
            this.pdfLoader.loadPdfFile();
        }
    }
}

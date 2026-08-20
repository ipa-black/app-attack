package com.applovin.impl.a.a.b.a;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.l;
import com.applovin.sdk.R;
/* loaded from: classes.dex */
public class c extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.a.a.a.a f4242a;

    /* renamed from: b  reason: collision with root package name */
    private n f4243b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f4244c;

    /* renamed from: d  reason: collision with root package name */
    private Button f4245d;

    private void a() {
        l lVar = new l();
        lVar.a(this.f4243b.an().a(this.f4242a));
        String b2 = this.f4243b.an().b(this.f4242a.c());
        if (b2 != null) {
            lVar.a("\nBid Response Preview:\n");
            lVar.a(b2);
        }
        TextView textView = (TextView) findViewById(R.id.email_report_tv);
        this.f4244c = textView;
        textView.setText(lVar.toString());
        this.f4244c.setTextColor(ViewCompat.MEASURED_STATE_MASK);
    }

    public void a(com.applovin.impl.a.a.a.a aVar, n nVar) {
        this.f4242a = aVar;
        this.f4243b = nVar;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(this.f4242a.a() + " - " + this.f4242a.b());
        setContentView(R.layout.creative_debugger_displayed_ad_detail_activity);
        a();
        Button button = (Button) findViewById(R.id.report_ad_button);
        this.f4245d = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.a.a.b.a.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.f4243b.an().a(c.this.f4242a, c.this, true);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.creative_debugger_displayed_ad_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.action_share == menuItem.getItemId()) {
            this.f4243b.an().a(this.f4242a, this, false);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}

package com.bytedance.sdk.openadsdk.dislike;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.customview.PAGEditText;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.ArrayList;
/* compiled from: TTDislikeSuggestionDialog.java */
/* loaded from: classes2.dex */
public class Tgh extends Dialog {
    private PAGTextView CJ;
    private PAGLinearLayout Qhi;
    private String ROR;
    private String Sf;
    private PAGImageView Tgh;
    private PAGEditText ac;
    private Qhi cJ;
    private PAGTextView fl;
    private String hm;

    /* compiled from: TTDislikeSuggestionDialog.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi();

        void Qhi(int i, FilterWord filterWord);

        void ac();

        void cJ();
    }

    public Tgh(Context context) {
        super(context, MQ.Tgh(context, "tt_quick_option_dialog"));
        setCanceledOnTouchOutside(false);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        PAGLinearLayout Qhi2 = Qhi(HzH.Qhi());
        this.Qhi = Qhi2;
        setContentView(Qhi2);
        Qhi(this.Qhi);
        ac();
        Qhi();
        CJ();
    }

    private void Qhi(View view) {
        Qhi((EditText) this.ac);
        this.fl.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.Tgh.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String obj = Tgh.this.ac.getText().toString();
                if (obj.length() <= 0 || obj.isEmpty()) {
                    return;
                }
                FilterWord filterWord = new FilterWord("0:00", obj);
                ArrayList arrayList = new ArrayList();
                arrayList.add(filterWord);
                com.bytedance.sdk.openadsdk.dislike.Qhi.Qhi().Qhi(Tgh.this.ROR, arrayList, Tgh.this.Sf, obj, Tgh.this.hm);
                if (Tgh.this.cJ != null) {
                    Tgh.this.cJ.Qhi(4, filterWord);
                }
                Tgh.this.dismiss();
            }
        });
        this.Tgh.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.Tgh.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (Tgh.this.cJ != null) {
                    Tgh.this.cJ.cJ();
                }
                Tgh.this.dismiss();
            }
        });
        this.ac.addTextChangedListener(new TextWatcher() { // from class: com.bytedance.sdk.openadsdk.dislike.Tgh.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int round = Math.round(charSequence.length());
                Tgh.this.CJ.setText(String.valueOf(round));
                if (round > 0) {
                    Tgh.this.fl.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    Tgh.this.fl.setClickable(true);
                    return;
                }
                Tgh.this.fl.setTextColor(-7829368);
                Tgh.this.fl.setClickable(false);
            }
        });
    }

    public static void Qhi(EditText editText) {
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.bytedance.sdk.openadsdk.dislike.Tgh.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                while (i < i2) {
                    int type = Character.getType(charSequence.charAt(i));
                    if (type == 19 || type == 28) {
                        return "";
                    }
                    i++;
                }
                return null;
            }
        }, new InputFilter.LengthFilter(500)});
    }

    private void ac() {
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        Window window = getWindow();
        if (window != null) {
            if (window.getDecorView() != null) {
                window.getDecorView().setPadding(0, 0, 0, 0);
            }
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
            window.setGravity(80);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        Qhi qhi = this.cJ;
        if (qhi != null) {
            qhi.Qhi();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        cJ();
        super.dismiss();
    }

    public void Qhi(Qhi qhi) {
        this.cJ = qhi;
    }

    public void Qhi() {
        PAGEditText pAGEditText = this.ac;
        if (pAGEditText == null) {
            return;
        }
        pAGEditText.requestFocus();
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(5);
        }
    }

    public void cJ() {
        InputMethodManager inputMethodManager;
        PAGEditText pAGEditText = this.ac;
        if (pAGEditText == null || (inputMethodManager = (InputMethodManager) pAGEditText.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.Qhi.getWindowToken(), 0);
    }

    private void CJ() {
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.dislike.Tgh.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (Tgh.this.cJ != null) {
                    Tgh.this.cJ.ac();
                }
            }
        });
    }

    public void Qhi(String str, String str2) {
        this.ROR = str;
        this.Sf = str2;
    }

    public void Qhi(String str) {
        this.hm = str;
    }

    private PAGLinearLayout Qhi(Context context) {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        pAGLinearLayout.setOrientation(1);
        pAGLinearLayout.setBackground(hm.Qhi(context, "tt_dislike_dialog_bg"));
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        pAGRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, zn.cJ(context, 48.0f)));
        this.Tgh = new PAGImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(16);
        layoutParams.topMargin = zn.cJ(context, 12.0f);
        layoutParams.leftMargin = zn.cJ(context, 12.0f);
        this.Tgh.setLayoutParams(layoutParams);
        this.Tgh.setClickable(true);
        this.Tgh.setFocusable(true);
        this.Tgh.setImageDrawable(hm.Qhi(context, "tt_titlebar_close_seletor"));
        PAGTextView pAGTextView = new PAGTextView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(16);
        layoutParams2.topMargin = zn.cJ(context, 12.0f);
        pAGTextView.setLayoutParams(layoutParams2);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        pAGTextView.setGravity(17);
        pAGTextView.setSingleLine(true);
        pAGTextView.setText(MQ.Qhi(context, "tt_display_error"));
        pAGTextView.setTextColor(Color.parseColor("#161823"));
        pAGTextView.setTextSize(15.0f);
        pAGTextView.setTypeface(Typeface.defaultFromStyle(0));
        this.fl = new PAGTextView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(11);
        layoutParams3.addRule(16);
        layoutParams3.topMargin = zn.cJ(context, 12.0f);
        layoutParams3.leftMargin = zn.cJ(context, 5.0f);
        layoutParams3.rightMargin = zn.cJ(context, 12.0f);
        this.fl.setLayoutParams(layoutParams3);
        this.fl.setPadding(0, 0, zn.cJ(context, 12.0f), 0);
        this.fl.setTextSize(14.0f);
        this.fl.setTextColor(-7829368);
        this.fl.setClickable(false);
        this.fl.setVisibility(0);
        this.fl.setGravity(5);
        this.fl.setSingleLine(true);
        this.fl.setText(MQ.Qhi(context, "tt_suggestion_commit"));
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, zn.cJ(context, 0.5f)));
        view.setBackgroundColor(Color.parseColor("#0F161823"));
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        pAGLinearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        pAGLinearLayout2.setOrientation(0);
        this.ac = new PAGEditText(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 15.0f;
        layoutParams4.leftMargin = zn.cJ(context, 12.0f);
        layoutParams4.topMargin = zn.cJ(context, 11.5f);
        this.ac.setLayoutParams(layoutParams4);
        this.ac.setLines(7);
        this.ac.setHint(MQ.Qhi(context, "tt_suggestion_description"));
        this.ac.setGravity(3);
        this.ac.setTextSize(15.0f);
        this.ac.setTextColor(Color.parseColor("#161823"));
        this.ac.setHintTextColor(Color.parseColor("#57161823"));
        this.ac.setBackground(null);
        this.ac.setImeOptions(268435456);
        this.CJ = new PAGTextView(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2);
        layoutParams5.weight = 1.0f;
        layoutParams5.rightMargin = zn.cJ(context, 12.0f);
        layoutParams5.bottomMargin = zn.cJ(context, 6.0f);
        layoutParams5.gravity = 80;
        this.CJ.setLayoutParams(layoutParams5);
        this.CJ.setText("0");
        this.CJ.setGravity(5);
        this.CJ.setTextColor(Color.parseColor("#BF161823"));
        this.CJ.setHintTextColor(Color.parseColor("#57161823"));
        this.CJ.setTextSize(12.0f);
        pAGLinearLayout.addView(pAGRelativeLayout);
        pAGLinearLayout.addView(view);
        pAGLinearLayout.addView(pAGLinearLayout2);
        pAGRelativeLayout.addView(this.Tgh);
        pAGRelativeLayout.addView(pAGTextView);
        pAGRelativeLayout.addView(this.fl);
        pAGLinearLayout2.addView(this.ac);
        pAGLinearLayout2.addView(this.CJ);
        return pAGLinearLayout;
    }
}

package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class FilterWord {
    private List<FilterWord> CJ;
    private String Qhi;
    private boolean ac;
    private String cJ;

    public FilterWord(String str, String str2) {
        this.Qhi = str;
        this.cJ = str2;
    }

    public FilterWord() {
    }

    public String getId() {
        return this.Qhi;
    }

    public void setId(String str) {
        this.Qhi = str;
    }

    public String getName() {
        return this.cJ;
    }

    public void setName(String str) {
        this.cJ = str;
    }

    public boolean getIsSelected() {
        return this.ac;
    }

    public void setIsSelected(boolean z) {
        this.ac = z;
    }

    public List<FilterWord> getOptions() {
        return this.CJ;
    }

    public void addOption(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        if (this.CJ == null) {
            this.CJ = new ArrayList();
        }
        this.CJ.add(filterWord);
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(this.Qhi) || TextUtils.isEmpty(this.cJ)) ? false : true;
    }

    public boolean hasSecondOptions() {
        List<FilterWord> list = this.CJ;
        return (list == null || list.isEmpty()) ? false : true;
    }
}

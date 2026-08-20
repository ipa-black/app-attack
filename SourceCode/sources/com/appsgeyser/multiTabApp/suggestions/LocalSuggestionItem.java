package com.appsgeyser.multiTabApp.suggestions;
/* loaded from: classes2.dex */
public class LocalSuggestionItem implements SuggestionItem {
    String title;
    String url;

    public LocalSuggestionItem(String str, String str2) {
        this.title = str == null ? "" : str;
        this.url = str2 == null ? "" : str2;
    }

    public String getUrl() {
        return this.url;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // com.appsgeyser.multiTabApp.suggestions.SuggestionItem
    public String getAutocompleteText() {
        return this.url;
    }
}

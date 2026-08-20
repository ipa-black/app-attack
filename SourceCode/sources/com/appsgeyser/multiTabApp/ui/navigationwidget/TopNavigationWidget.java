package com.appsgeyser.multiTabApp.ui.navigationwidget;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.Patterns;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import android.widget.AutoCompleteTextView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.configuration.UrlBarMenuButton;
import com.appsgeyser.multiTabApp.suggestions.LocalSuggestionItem;
import com.appsgeyser.multiTabApp.suggestions.RemoteSuggestionItem;
import com.appsgeyser.multiTabApp.suggestions.SuggestionItem;
import com.appsgeyser.multiTabApp.suggestions.SuggestionsClient;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.w_19998775.R;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes2.dex */
public class TopNavigationWidget extends NavigationWidget {
    protected View.OnClickListener _refreshOnclickListener;

    @Override // com.appsgeyser.multiTabApp.ui.navigationwidget.NavigationWidget
    public void requestSuggestions() {
        final String obj = this.urlTextBox.getText().toString();
        this.handler.removeCallbacksAndMessages(null);
        if (obj != null && obj.length() > 0 && obj.length() < 30 && !Patterns.WEB_URL.matcher(obj).matches()) {
            this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.1
                @Override // java.lang.Runnable
                public void run() {
                    TopNavigationWidget.this.suggestionsClient.getSuggestionsAsync(obj);
                }
            }, 300L);
        } else {
            hideSuggestionsView();
        }
    }

    @Override // com.appsgeyser.multiTabApp.ui.navigationwidget.NavigationWidget
    public void hideSuggestionsView() {
        Factory.getInstance().getMainNavigationActivity().runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.2
            @Override // java.lang.Runnable
            public void run() {
                if (TopNavigationWidget.this.suggestionsView != null) {
                    TopNavigationWidget.this.suggestionsView.setVisibility(8);
                    TopNavigationWidget.this.suggestionsView.removeAllViews();
                }
                if (TopNavigationWidget.this.suggestionsViewScroll != null) {
                    TopNavigationWidget.this.suggestionsViewScroll.setVisibility(8);
                }
                TopNavigationWidget.this._suggestionsVisible = false;
            }
        });
    }

    public TopNavigationWidget(ViewGroup viewGroup, String str, View view, Collection<UrlBarMenuButton> collection) {
        super(viewGroup, str, view, collection);
        this._refreshOnclickListener = new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                TopNavigationWidget.this.hideAdditionalMenu();
                Factory.getInstance().getTabsController().getSelectedTab().getWebView().reload();
            }
        };
        this._parent = viewGroup;
        this._progressBarContainer = (RelativeLayout) viewGroup.findViewById(R.id.progressbarPanel);
        this._defaultUrl = str;
        this._browser = view;
        createWidgetLayout();
        this.suggestionsClient = new SuggestionsClient(Factory.getInstance().getMainNavigationActivity());
        this.suggestionsClient.setListener(this);
        this.refreshImage = R.drawable.ic_refresh_white_24dp;
        this.stopImage = R.drawable.ic_close_white_24dp;
        this.urlBarButton = R.layout.url_bar_top_menu_button;
        this.urlBarCheckBox = R.layout.url_bar_top_menu_checkbox;
        this.urlBarIcon = R.layout.url_bar_top_icon;
        this.suggestionsView = (ViewGroup) this._parent.findViewById(R.id.suggestions);
        this.suggestionsViewScroll = (ViewGroup) this._parent.findViewById(R.id.suggestionsScroll);
        this.overlay = (ViewGroup) this._parent.findViewById(R.id.menuOverlay);
        this.overlayScroll = (ViewGroup) this._parent.findViewById(R.id.menuOverlayScroll);
        this.urlTextBox = (AutoCompleteTextView) this._parent.findViewById(R.id.urlTextbox);
        this.searchBackground = (LinearLayout) this._parent.findViewById(R.id.search_background);
        this.stopRefreshButton = (ImageButton) this._parent.findViewById(R.id.stopRefreshButton);
        this.searchBtn = (ImageView) this.searchBackground.findViewById(R.id.search_icon);
        this.clearTextButton = (ImageButton) this._parent.findViewById(R.id.clearText);
        this.clearTextButton.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                TopNavigationWidget.this.urlTextBox.setText("");
            }
        });
        this.urlTextBox.addTextChangedListener(this.urlBarTextChangeListener);
        this.urlTextBox.setOnFocusChangeListener(this.focusChangeListener);
        this.urlTextBox.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                TopNavigationWidget.this.focusChangeListener.onFocusChange(view2, true);
            }
        });
        initEventHandlers();
    }

    public void createWidgetLayout() {
        Context context = this._parent.getContext();
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.navigation_bar_top, this._parent, true);
        this.urlBar = (Toolbar) this._parent.findViewById(R.id.topNavigationRow);
        this.urlBar.bringToFront();
        this.urlBar.inflateMenu(R.menu.webapp_menu);
        AppsgeyserSDK.isAboutDialogEnabled(context, new AppsgeyserSDK.OnAboutDialogEnableListener() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.5
            @Override // com.appsgeyser.sdk.AppsgeyserSDK.OnAboutDialogEnableListener
            public void onDialogEnableReceived(boolean z) {
                if (z) {
                    return;
                }
                TopNavigationWidget.this.urlBar.getMenu().findItem(R.id.webapp_about).setVisible(false);
            }
        });
        final MainNavigationActivity mainNavigationActivity = Factory.getInstance().getMainNavigationActivity();
        mainNavigationActivity.runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.6
            @Override // java.lang.Runnable
            public void run() {
                mainNavigationActivity.setSupportActionBar(TopNavigationWidget.this.urlBar);
            }
        });
        this._defaultTopBrowserMargin = (int) TypedValue.applyDimension(1, 50.0f, context.getResources().getDisplayMetrics());
        this._defaultBottomBrowserMargin = 0;
        show();
    }

    @Override // com.appsgeyser.multiTabApp.ui.navigationwidget.NavigationWidget
    public void hide() {
        if (this._parent.findViewById(R.id.topNavigationRow) == null) {
            return;
        }
        this._parent.findViewById(R.id.topNavigationRow).setVisibility(8);
        ((RelativeLayout.LayoutParams) this._browser.getLayoutParams()).setMargins(0, 0, 0, 0);
        ((RelativeLayout.LayoutParams) this._progressBarContainer.getLayoutParams()).setMargins(0, 0, 0, 0);
        this._visible = false;
    }

    @Override // com.appsgeyser.multiTabApp.ui.navigationwidget.NavigationWidget
    public void show() {
        if (this._parent.findViewById(R.id.topNavigationRow) == null) {
            return;
        }
        this._parent.findViewById(R.id.topNavigationRow).setVisibility(0);
        ((RelativeLayout.LayoutParams) this._browser.getLayoutParams()).setMargins(this._defaultLeftBrowserMargin, this._defaultTopBrowserMargin, this._defaultRightBrowserMargin, this._defaultBottomBrowserMargin);
        ((RelativeLayout.LayoutParams) this._progressBarContainer.getLayoutParams()).setMargins(this._defaultLeftBrowserMargin, this._defaultTopBrowserMargin, this._defaultRightBrowserMargin, this._defaultBottomBrowserMargin);
        this._visible = true;
    }

    @Override // com.appsgeyser.multiTabApp.ui.navigationwidget.NavigationWidget
    public void changeVisibilityAnimated(final boolean z) {
        if (this._parent.findViewById(R.id.topNavigationRow) != null) {
            if (this._visible && z) {
                return;
            }
            if (this._visible || z) {
                Animation loadAnimation = AnimationUtils.loadAnimation(this._parent.getContext(), z ? R.anim.slide_down : R.anim.slide_up);
                loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.7
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        if (z) {
                            TopNavigationWidget.this.show();
                        } else {
                            TopNavigationWidget.this.hide();
                        }
                    }
                });
                loadAnimation.setDuration(300L);
                this._parent.findViewById(R.id.topNavigationRow).startAnimation(loadAnimation);
                Animation animation = new Animation() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.8
                    @Override // android.view.animation.Animation
                    protected void applyTransformation(float f2, Transformation transformation) {
                        float f3;
                        if (z) {
                            f3 = TopNavigationWidget.this._defaultTopBrowserMargin * f2;
                        } else {
                            f3 = TopNavigationWidget.this._defaultTopBrowserMargin - (TopNavigationWidget.this._defaultTopBrowserMargin * f2);
                        }
                        int i = (int) f3;
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) TopNavigationWidget.this._browser.getLayoutParams();
                        layoutParams.setMargins(TopNavigationWidget.this._defaultLeftBrowserMargin, i, TopNavigationWidget.this._defaultRightBrowserMargin, TopNavigationWidget.this._defaultBottomBrowserMargin);
                        TopNavigationWidget.this._browser.setLayoutParams(layoutParams);
                    }
                };
                animation.setDuration(300L);
                this._parent.startAnimation(animation);
            }
        }
    }

    @Override // com.appsgeyser.multiTabApp.ui.navigationwidget.NavigationWidget
    public void hideAnimated() {
        changeVisibilityAnimated(false);
    }

    @Override // com.appsgeyser.multiTabApp.ui.navigationwidget.NavigationWidget
    public void showAnimated() {
        changeVisibilityAnimated(true);
    }

    public void hideAdditionalMenu() {
        if (this._menuVisible) {
            this._menuVisible = false;
            ViewGroup.LayoutParams layoutParams = this.overlay.getLayoutParams();
            layoutParams.height = -2;
            this.overlay.setLayoutParams(layoutParams);
            this.overlay.startAnimation(this.slideUp);
        }
    }

    protected void showAdditionalMenu() {
        if (this._menuVisible) {
            return;
        }
        this._menuVisible = true;
        this.overlayScroll.setVisibility(0);
        this.overlay.setVisibility(0);
        this.overlay.startAnimation(this.slideDown);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.overlay.getLayoutParams();
        layoutParams.height = 12;
        this.overlay.setLayoutParams(layoutParams);
    }

    protected void toggleAdditionalMenu() {
        if (this._menuVisible) {
            hideAdditionalMenu();
        } else {
            showAdditionalMenu();
        }
    }

    public void changeUrlBarRightMarginAnimated(final int i, final int i2) {
        Animation animation = new Animation() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.9
            @Override // android.view.animation.Animation
            protected void applyTransformation(float f2, Transformation transformation) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) TopNavigationWidget.this.searchBackground.getLayoutParams();
                int i3 = i;
                layoutParams.setMargins(layoutParams.leftMargin, layoutParams.topMargin, TopNavigationWidget.this.dpToPx((int) (i3 + (1 * (i2 - i3) * f2))), layoutParams.bottomMargin);
                TopNavigationWidget.this.searchBackground.setLayoutParams(layoutParams);
            }
        };
        animation.setDuration(100L);
        this._parent.startAnimation(animation);
    }

    protected void extendUrlInput() {
        changeUrlBarRightMarginAnimated(pxToDp(((RelativeLayout.LayoutParams) this.searchBackground.getLayoutParams()).rightMargin), 45);
    }

    protected void shortenUrlInput() {
        changeUrlBarRightMarginAnimated(pxToDp(((RelativeLayout.LayoutParams) this.searchBackground.getLayoutParams()).rightMargin), 75);
    }

    public boolean isMenuVisible() {
        return this._menuVisible;
    }

    public boolean isSuggestionsVisible() {
        return this._suggestionsVisible;
    }

    private ArrayList<LocalSuggestionItem> getLocalSuggestions(String str) {
        Cursor historyItemsGroupedByUrl = this._history.getHistoryItemsGroupedByUrl(str);
        ArrayList<LocalSuggestionItem> arrayList = new ArrayList<>();
        try {
            if (historyItemsGroupedByUrl.moveToFirst()) {
                do {
                    String string = historyItemsGroupedByUrl.getString(historyItemsGroupedByUrl.getColumnIndex("title"));
                    String string2 = historyItemsGroupedByUrl.getString(historyItemsGroupedByUrl.getColumnIndex("url"));
                    if (!isHomePageUrl(string2)) {
                        arrayList.add(new LocalSuggestionItem(string, string2));
                    }
                } while (historyItemsGroupedByUrl.moveToNext());
                historyItemsGroupedByUrl.close();
                return arrayList;
            }
            historyItemsGroupedByUrl.close();
            return arrayList;
        } catch (Exception unused) {
            return new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SuggestionItem _getNextSuggestion(ArrayList<LocalSuggestionItem> arrayList, int i, ArrayList<RemoteSuggestionItem> arrayList2, int i2, int i3) {
        if (i3 <= 2) {
            if (i2 < arrayList2.size()) {
                return arrayList2.get(i2);
            }
            if (i < arrayList.size()) {
                return arrayList.get(i);
            }
            return null;
        } else if (i < arrayList.size()) {
            return arrayList.get(i);
        } else {
            if (i2 < arrayList2.size()) {
                return arrayList2.get(i2);
            }
            return null;
        }
    }

    @Override // com.appsgeyser.multiTabApp.suggestions.SuggestionsListener
    public synchronized void onReceiveSuggestions(final ArrayList<RemoteSuggestionItem> arrayList, String str) {
        final ArrayList<LocalSuggestionItem> localSuggestions = getLocalSuggestions(str);
        final Context context = this._parent.getContext();
        Factory.getInstance().getMainNavigationActivity().runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.11
            @Override // java.lang.Runnable
            public void run() {
                LocalSuggestionItem localSuggestionItem;
                TopNavigationWidget.this.suggestionsView.removeAllViews();
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < 6; i3++) {
                    final SuggestionItem _getNextSuggestion = TopNavigationWidget.this._getNextSuggestion(localSuggestions, i, arrayList, i2, i3);
                    if (_getNextSuggestion == null) {
                        break;
                    }
                    ViewGroup viewGroup = (ViewGroup) ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.suggestions_item, (ViewGroup) null);
                    TextView textView = (TextView) viewGroup.findViewById(R.id.suggestionText);
                    ImageView imageView = (ImageView) viewGroup.findViewById(R.id.suggestionImage);
                    if (_getNextSuggestion instanceof LocalSuggestionItem) {
                        i++;
                        String str2 = localSuggestionItem.getTitle() + "\n" + localSuggestionItem.getUrl();
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str2);
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.rgb(0, 0, 255)), ((LocalSuggestionItem) _getNextSuggestion).getTitle().length(), str2.length(), 18);
                        textView.setText(spannableStringBuilder);
                    } else if (_getNextSuggestion instanceof RemoteSuggestionItem) {
                        i2++;
                        textView.setText(((RemoteSuggestionItem) _getNextSuggestion).getAutocompleteText());
                    }
                    textView.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.11.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            TopNavigationWidget.this.urlTextBox.setText(_getNextSuggestion.getAutocompleteText());
                            TopNavigationWidget.this.hideSuggestionsView();
                            TopNavigationWidget.this._forceGoToUrl(TopNavigationWidget.this.urlTextBox);
                        }
                    });
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.navigationwidget.TopNavigationWidget.11.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            TopNavigationWidget.this.urlTextBox.setText(_getNextSuggestion.getAutocompleteText());
                            TopNavigationWidget.this.urlTextBox.setSelection(TopNavigationWidget.this.urlTextBox.getText().length());
                            TopNavigationWidget.this.requestSuggestions();
                        }
                    });
                    TopNavigationWidget.this.suggestionsView.addView(viewGroup);
                }
                TopNavigationWidget.this.suggestionsViewScroll.setVisibility(0);
                TopNavigationWidget.this.suggestionsView.setVisibility(0);
                TopNavigationWidget.this._suggestionsVisible = true;
            }
        });
    }
}

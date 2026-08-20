package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.Pair;
import androidx.core.view.GravityCompat;
import java.util.HashMap;
import java.util.Map;
import kotlin.text.Typography;
/* compiled from: DrawableUtils.java */
/* loaded from: classes2.dex */
public class hm {
    private static final Map<String, Pair<? extends Drawable, Integer>> Qhi = new HashMap();
    private static Integer cJ = null;

    public static Drawable Qhi(Context context, String str) {
        Pair<? extends Drawable, Integer> pair;
        cJ = Integer.valueOf(com.bytedance.sdk.openadsdk.core.HzH.CJ().TKG());
        new Object[]{"get drawable by code, ", "drawable name is: ".concat(String.valueOf(str))};
        Map<String, Pair<? extends Drawable, Integer>> map = Qhi;
        new Object[]{"drawableMap size is：", Integer.valueOf(map.size()), "and drawable content is: ", map};
        if (map.containsKey(str) && (pair = map.get(str)) != null) {
            Drawable drawable = (Drawable) pair.first;
            map.put(str, new Pair<>(drawable, Integer.valueOf(((Integer) pair.second).intValue() + 1)));
            return drawable;
        }
        Qhi();
        return Qhi(str, context);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static Drawable Qhi(String str, Context context) {
        char c2;
        RotateDrawable rotateDrawable;
        Drawable drawable;
        str.hashCode();
        switch (str.hashCode()) {
            case -2137782317:
                if (str.equals("tt_leftbackicon_selector_for_dark")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -2023672829:
                if (str.equals("tt_dislike_dialog_bg")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -2010340681:
                if (str.equals("tt_leftbackbutton_titlebar_photo_preview")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1888785259:
                if (str.equals("tt_seek_progress")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1883903877:
                if (str.equals("tt_dislike_middle_seletor")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1881901373:
                if (str.equals("tt_ad_cover_btn_begin_bg")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -1818605128:
                if (str.equals("tt_leftbackicon_selector")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -1724866088:
                if (str.equals("tt_seek_thumb_normal")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -1698792361:
                if (str.equals("tt_stop_movebar_textpage")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -1500492368:
                if (str.equals("tt_backup_btn_1")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -1308443384:
                if (str.equals("tt_ad_report_info_bg")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -1222892514:
                if (str.equals("tt_playable_btn_bk")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -1163545839:
                if (str.equals("tt_dislike_bottom_seletor")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -1150582740:
                if (str.equals("tt_seek_thumb_fullscreen")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case -1147412691:
                if (str.equals("tt_custom_dialog_bg")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -1107858393:
                if (str.equals("tt_ad_loading_three_mid")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -876774215:
                if (str.equals("tt_close_move_detail")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case -875200849:
                if (str.equals("tt_mute_btn_bg")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case -847552402:
                if (str.equals("tt_seek_thumb")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case -561153052:
                if (str.equals("tt_reward_countdown_bg")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case -508263579:
                if (str.equals("tt_play_movebar_textpage")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case -473198695:
                if (str.equals("tt_refreshing_video_textpage")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case -404284879:
                if (str.equals("tt_playable_progress_style")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case -292612462:
                if (str.equals("tt_seek_thumb_fullscreen_selector")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case -226695937:
                if (str.equals("tt_ad_landing_loading_three_mid")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case -154809169:
                if (str.equals("tt_pangle_ad_mute_btn_bg")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case -97103333:
                if (str.equals("tt_video_black_desc_gradient")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 16094728:
                if (str.equals("tt_ad_loading_three_left")) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case 27541452:
                if (str.equals("tt_mute_wrapper")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case 57270120:
                if (str.equals("tt_dislike_top_bg")) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case 106179457:
                if (str.equals("tt_comment_tv")) {
                    c2 = 30;
                    break;
                }
                c2 = 65535;
                break;
            case 242455215:
                if (str.equals("tt_reward_full_new_bar_bg")) {
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            case 247520514:
                if (str.equals("tt_reward_full_video_backup_btn_bg")) {
                    c2 = ' ';
                    break;
                }
                c2 = 65535;
                break;
            case 310787585:
                if (str.equals("tt_full_reward_loading_progress_style")) {
                    c2 = '!';
                    break;
                }
                c2 = 65535;
                break;
            case 314734139:
                if (str.equals("tt_detail_video_btn_bg")) {
                    c2 = Typography.quote;
                    break;
                }
                c2 = 65535;
                break;
            case 410262782:
                if (str.equals("tt_pangle_banner_btn_bg")) {
                    c2 = '#';
                    break;
                }
                c2 = 65535;
                break;
            case 484030064:
                if (str.equals("tt_seek_thumb_fullscreen_press")) {
                    c2 = '$';
                    break;
                }
                c2 = 65535;
                break;
            case 494589792:
                if (str.equals("tt_browser_download_selector")) {
                    c2 = '%';
                    break;
                }
                c2 = 65535;
                break;
            case 504597563:
                if (str.equals("tt_ad_loading_three_right")) {
                    c2 = Typography.amp;
                    break;
                }
                c2 = 65535;
                break;
            case 507305701:
                if (str.equals("tt_pangle_btn_bg")) {
                    c2 = '\'';
                    break;
                }
                c2 = 65535;
                break;
            case 708409173:
                if (str.equals("tt_privacy_progress_style")) {
                    c2 = '(';
                    break;
                }
                c2 = 65535;
                break;
            case 991946046:
                if (str.equals("tt_privacy_btn_bg")) {
                    c2 = ')';
                    break;
                }
                c2 = 65535;
                break;
            case 1054661938:
                if (str.equals("tt_seek_thumb_press")) {
                    c2 = '*';
                    break;
                }
                c2 = 65535;
                break;
            case 1094767909:
                if (str.equals("tt_unmute_wrapper")) {
                    c2 = '+';
                    break;
                }
                c2 = 65535;
                break;
            case 1115144587:
                if (str.equals("tt_titlebar_close_seletor_for_dark")) {
                    c2 = ',';
                    break;
                }
                c2 = 65535;
                break;
            case 1193160467:
                if (str.equals("tt_ad_landing_loading_three_right")) {
                    c2 = '-';
                    break;
                }
                c2 = 65535;
                break;
            case 1234814491:
                if (str.equals("tt_landingpage_loading_text_rect")) {
                    c2 = '.';
                    break;
                }
                c2 = 65535;
                break;
            case 1241312517:
                if (str.equals("tt_shadow_btn_back_withoutnight")) {
                    c2 = '/';
                    break;
                }
                c2 = 65535;
                break;
            case 1360033453:
                if (str.equals("tt_circle_solid_mian")) {
                    c2 = '0';
                    break;
                }
                c2 = 65535;
                break;
            case 1391934389:
                if (str.equals("tt_browser_progress_style")) {
                    c2 = '1';
                    break;
                }
                c2 = 65535;
                break;
            case 1459143575:
                if (str.equals("tt_download_corner_bg")) {
                    c2 = '2';
                    break;
                }
                c2 = 65535;
                break;
            case 1473061455:
                if (str.equals("tt_ad_report_info_button_bg")) {
                    c2 = '3';
                    break;
                }
                c2 = 65535;
                break;
            case 1562327088:
                if (str.equals("tt_ad_landing_loading_three_left")) {
                    c2 = '4';
                    break;
                }
                c2 = 65535;
                break;
            case 1635801742:
                if (str.equals("tt_pangle_ad_close_btn_bg")) {
                    c2 = '5';
                    break;
                }
                c2 = 65535;
                break;
            case 1733712735:
                if (str.equals("tt_lefterbackicon_titlebar_press_wrapper")) {
                    c2 = '6';
                    break;
                }
                c2 = 65535;
                break;
            case 1859118378:
                if (str.equals("tt_reward_video_download_btn_bg")) {
                    c2 = '7';
                    break;
                }
                c2 = 65535;
                break;
            case 1908435428:
                if (str.equals("tt_ad_loading_rect")) {
                    c2 = '8';
                    break;
                }
                c2 = 65535;
                break;
            case 1967077738:
                if (str.equals("tt_shadow_btn_back")) {
                    c2 = '9';
                    break;
                }
                c2 = 65535;
                break;
            case 1986221289:
                if (str.equals("tt_dislike_top_seletor")) {
                    c2 = ':';
                    break;
                }
                c2 = 65535;
                break;
            case 1987199879:
                if (str.equals("tt_video_loading_progress_bar")) {
                    c2 = ';';
                    break;
                }
                c2 = 65535;
                break;
            case 1995246663:
                if (str.equals("tt_ad_skip_btn_bg2")) {
                    c2 = Typography.less;
                    break;
                }
                c2 = 65535;
                break;
            case 2051103617:
                if (str.equals("tt_privacy_webview_bg")) {
                    c2 = '=';
                    break;
                }
                c2 = 65535;
                break;
            case 2091139328:
                if (str.equals("tt_titlebar_close_seletor")) {
                    c2 = Typography.greater;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                drawable = Qhi(com.bytedance.sdk.component.utils.MQ.ac(context, "tt_lefterbackicon_titlebar_press_for_dark"), com.bytedance.sdk.component.utils.MQ.ac(context, "tt_lefterbackicon_titlebar_for_dark"));
                break;
            case 1:
                drawable = Qhi(0, -1, new int[]{zn.cJ(context, 8.0f)}, null, null, null);
                break;
            case 2:
                drawable = Qhi(com.bytedance.sdk.component.utils.MQ.ac(context, "tt_white_lefterbackicon_titlebar_press"), com.bytedance.sdk.component.utils.MQ.ac(context, "tt_white_lefterbackicon_titlebar"));
                break;
            case 3:
                rotateDrawable = new LayerDrawable(new Drawable[]{Qhi(0, Integer.valueOf(Color.parseColor("#A5FFFFFF")), new int[]{zn.cJ(context, 1.5f)}, new int[]{-1, zn.cJ(context, 1.0f)}, null, null), new ClipDrawable(Qhi(0, -1, new int[]{zn.cJ(context, 1.5f)}, new int[]{-1, zn.cJ(context, 1.0f)}, null, null), GravityCompat.START, 1), new ClipDrawable(Qhi(0, Integer.valueOf(Color.parseColor("#fff85959")), new int[]{zn.cJ(context, 1.5f)}, new int[]{-1, zn.cJ(context, 1.0f)}, null, null), GravityCompat.START, 1)});
                drawable = rotateDrawable;
                break;
            case 4:
                drawable = Qhi(Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_fde6e6e6")), null, null, null, null), Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_fdffffff")), null, null, null, null));
                break;
            case 5:
                drawable = Qhi(Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_2a90d7")), new int[]{zn.cJ(context, 6.0f)}, null, Integer.valueOf(zn.cJ(context, 1.0f)), Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "@color/tt_7f2a90d7"))), Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_2a90d7")), new int[]{zn.cJ(context, 6.0f)}, null, Integer.valueOf(zn.cJ(context, 1.0f)), Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "@color/tt_2a90d7"))));
                break;
            case 6:
                drawable = com.bytedance.sdk.component.utils.MQ.ac(context, "tt_lefterbackicon_titlebar");
                break;
            case 7:
                drawable = Qhi(1, -1, null, new int[]{zn.cJ(context, 15.0f), zn.cJ(context, 15.0f)}, Integer.valueOf(zn.cJ(context, 1.0f)), 0);
                break;
            case '\b':
                drawable = Qhi(com.bytedance.sdk.component.utils.MQ.ac(context, "tt_new_pause_video_press"), com.bytedance.sdk.component.utils.MQ.ac(context, "tt_new_pause_video"));
                break;
            case '\t':
                drawable = Qhi(Qhi(0, Integer.valueOf(Color.parseColor("#33f32830")), new int[]{zn.cJ(context, 4.0f)}, null, null, null), Qhi(0, Integer.valueOf(Color.parseColor("#f32830")), new int[]{zn.cJ(context, 4.0f)}, null, null, null));
                break;
            case '\n':
                drawable = Qhi(0, -1, new int[]{zn.cJ(context, 12.0f), zn.cJ(context, 12.0f), 0, 0}, null, null, null);
                break;
            case 11:
                drawable = Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_00000000")), new int[]{zn.cJ(context, 30.0f)}, null, Integer.valueOf(zn.cJ(context, 1.0f)), -1);
                break;
            case '\f':
                drawable = Qhi(Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_fde6e6e6")), new int[]{0, 0, zn.cJ(context, 5.0f), zn.cJ(context, 5.0f)}, null, null, null), Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_fdffffff")), new int[]{0, 0, zn.cJ(context, 5.0f), zn.cJ(context, 5.0f)}, null, null, null));
                break;
            case '\r':
                drawable = Qhi(1, -1, null, new int[]{zn.cJ(context, 18.0f), zn.cJ(context, 18.0f)}, null, null);
                break;
            case 14:
                drawable = Qhi(0, -1, new int[]{zn.cJ(context, 6.0f)}, null, Integer.valueOf(zn.cJ(context, 0.8f)), -1);
                break;
            case 15:
                drawable = Qhi(0, null, null, null, Integer.valueOf(zn.cJ(context, 1.5f)), -1);
                break;
            case 16:
                drawable = Qhi(com.bytedance.sdk.component.utils.MQ.ac(context, "tt_close_move_details_pressed"), com.bytedance.sdk.component.utils.MQ.ac(context, "tt_close_move_details_normal"));
                break;
            case 17:
                drawable = Qhi(1, Integer.valueOf(Color.parseColor("#99333333")), null, new int[]{zn.cJ(context, 28.0f), zn.cJ(context, 28.0f)}, null, null);
                break;
            case 18:
                drawable = Qhi(Qhi(1, -1, null, new int[]{zn.cJ(context, 22.0f), zn.cJ(context, 22.0f)}, Integer.valueOf(zn.cJ(context, 1.0f)), 0), Qhi(1, -1, null, new int[]{zn.cJ(context, 15.0f), zn.cJ(context, 15.0f)}, Integer.valueOf(zn.cJ(context, 1.0f)), 0));
                break;
            case 19:
                drawable = Qhi(1, Integer.valueOf(Color.parseColor("#99333333")), null, new int[]{zn.cJ(context, 28.0f), zn.cJ(context, 28.0f)}, null, null);
                break;
            case 20:
                drawable = Qhi(com.bytedance.sdk.component.utils.MQ.ac(context, "tt_new_play_video"), com.bytedance.sdk.component.utils.MQ.ac(context, "tt_new_play_video"));
                break;
            case 21:
                drawable = Qhi(com.bytedance.sdk.component.utils.MQ.ac(context, "tt_refreshing_video_textpage_pressed"), com.bytedance.sdk.component.utils.MQ.ac(context, "tt_refreshing_video_textpage_normal"));
                break;
            case 22:
                rotateDrawable = new LayerDrawable(new Drawable[]{Qhi(0, Integer.valueOf(Color.parseColor("#4DFC625C")), new int[]{zn.cJ(context, 3.0f)}, null, null, null), new ClipDrawable(Qhi(0, Integer.valueOf(Color.parseColor("#FC625C")), new int[]{zn.cJ(context, 3.0f)}, null, null, null), GravityCompat.START, 1)});
                drawable = rotateDrawable;
                break;
            case 23:
                drawable = Qhi(Qhi(1, -1, null, new int[]{zn.cJ(context, 18.0f), zn.cJ(context, 18.0f)}, Integer.valueOf(zn.cJ(context, 1.0f)), 0), Qhi(1, -1, null, new int[]{zn.cJ(context, 18.0f), zn.cJ(context, 18.0f)}, Integer.valueOf(zn.cJ(context, 1.0f)), 0));
                break;
            case 24:
                drawable = Qhi(0, null, null, null, Integer.valueOf(zn.cJ(context, 1.5f)), Integer.valueOf(Color.parseColor("#ABACB0")));
                break;
            case 25:
                drawable = Qhi(1, Integer.valueOf(Color.parseColor("#99333333")), null, new int[]{zn.cJ(context, 28.0f), zn.cJ(context, 28.0f)}, null, null);
                break;
            case 26:
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setGradientType(0);
                gradientDrawable.setColors(new int[]{com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_ff1a1a1a"), com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_00000000")});
                gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
                rotateDrawable = gradientDrawable;
                drawable = rotateDrawable;
                break;
            case 27:
                drawable = Qhi(0, null, new int[]{zn.cJ(context, 6.0f), 0, 0, zn.cJ(context, 6.0f)}, null, Integer.valueOf(zn.cJ(context, 1.5f)), -1);
                break;
            case 28:
                Drawable ac = com.bytedance.sdk.component.utils.MQ.ac(context, "tt_mute");
                StateListDrawable stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(new int[0], ac);
                stateListDrawable.setAutoMirrored(true);
                rotateDrawable = stateListDrawable;
                drawable = rotateDrawable;
                break;
            case 29:
                drawable = Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_fdffffff")), new int[]{zn.cJ(context, 5.0f), zn.cJ(context, 5.0f), 0, 0}, null, null, null);
                break;
            case 30:
                drawable = Qhi(0, -1, new int[]{zn.cJ(context, 4.0f)}, null, Integer.valueOf(zn.cJ(context, 1.0f)), Integer.valueOf(Color.parseColor("#0F161823")));
                break;
            case 31:
                drawable = Qhi(0, Integer.valueOf(Color.parseColor("#ccffffff")), new int[]{zn.cJ(context, 18.0f)}, null, null, null);
                break;
            case ' ':
                drawable = Qhi(0, Integer.valueOf(Color.parseColor("#ff0088ff")), new int[]{zn.cJ(context, 6.0f)}, null, null, null);
                break;
            case '!':
                GradientDrawable Qhi2 = Qhi(0, Integer.valueOf(Color.parseColor("#EAEAEA")), new int[]{zn.cJ(context, 50.0f)}, null, null, null);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(zn.cJ(context, 15.0f));
                gradientDrawable2.setColors(new int[]{Color.parseColor("#1A73E8"), Color.parseColor("#569FFF")});
                gradientDrawable2.setGradientType(0);
                gradientDrawable2.setOrientation(GradientDrawable.Orientation.BOTTOM_TOP);
                drawable = new LayerDrawable(new Drawable[]{Qhi2, new ScaleDrawable(gradientDrawable2, GravityCompat.START, 1.0f, -1.0f)});
                break;
            case '\"':
                drawable = Qhi(0, Integer.valueOf(Color.parseColor("#26000000")), new int[]{zn.cJ(context, 4.0f)}, null, null, null);
                break;
            case '#':
                drawable = Qhi(0, Integer.valueOf(Color.parseColor("#ff2f87f8")), new int[]{zn.cJ(context, 2.0f)}, new int[]{zn.cJ(context, 98.0f), zn.cJ(context, 25.0f)}, null, null);
                break;
            case '$':
                drawable = Qhi(1, -1, null, new int[]{zn.cJ(context, 18.0f), zn.cJ(context, 18.0f)}, Integer.valueOf(zn.cJ(context, 1.0f)), 0);
                break;
            case '%':
                drawable = Qhi(Qhi(0, Integer.valueOf(Color.parseColor("#2582c3")), null, null, null, null), Qhi(0, Integer.valueOf(Color.parseColor("#2a90d7")), null, null, null, null));
                break;
            case '&':
                drawable = Qhi(0, null, new int[]{0, zn.cJ(context, 6.0f), zn.cJ(context, 6.0f), 0}, null, Integer.valueOf(zn.cJ(context, 1.5f)), -1);
                break;
            case '\'':
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setShape(0);
                gradientDrawable3.setSize(zn.cJ(context, 280.0f), zn.cJ(context, 38.0f));
                gradientDrawable3.setCornerRadius(zn.cJ(context, 19.0f));
                gradientDrawable3.setOrientation(GradientDrawable.Orientation.LEFT_RIGHT);
                gradientDrawable3.setColors(new int[]{Color.parseColor("#fff02d42"), Color.parseColor("#fffc4b3c")});
                gradientDrawable3.setGradientType(0);
                gradientDrawable3.setUseLevel(true);
                rotateDrawable = gradientDrawable3;
                drawable = rotateDrawable;
                break;
            case '(':
                drawable = new LayerDrawable(new Drawable[]{Qhi(0, Integer.valueOf(Color.parseColor("#33007AFF")), null, null, null, null), new ClipDrawable(Qhi(0, Integer.valueOf(Color.parseColor("#007AFF")), null, null, null, null), GravityCompat.START, 1)});
                break;
            case ')':
                GradientDrawable gradientDrawable4 = new GradientDrawable();
                gradientDrawable4.setShape(0);
                gradientDrawable4.setSize(zn.cJ(context, 258.0f), zn.cJ(context, 43.0f));
                gradientDrawable4.setCornerRadius(zn.cJ(context, 22.0f));
                gradientDrawable4.setColors(new int[]{Color.parseColor("#73CBFC"), Color.parseColor("#3F9CF7")});
                gradientDrawable4.setGradientType(0);
                rotateDrawable = gradientDrawable4;
                drawable = rotateDrawable;
                break;
            case '*':
                drawable = Qhi(1, -1, null, new int[]{zn.cJ(context, 22.0f), zn.cJ(context, 22.0f)}, Integer.valueOf(zn.cJ(context, 1.0f)), 0);
                break;
            case '+':
                Drawable ac2 = com.bytedance.sdk.component.utils.MQ.ac(context, "tt_unmute");
                StateListDrawable stateListDrawable2 = new StateListDrawable();
                stateListDrawable2.addState(new int[0], ac2);
                stateListDrawable2.setAutoMirrored(true);
                rotateDrawable = stateListDrawable2;
                drawable = rotateDrawable;
                break;
            case ',':
                drawable = Qhi(com.bytedance.sdk.component.utils.MQ.ac(context, "tt_titlebar_close_press_for_dark"), com.bytedance.sdk.component.utils.MQ.ac(context, "tt_titlebar_close_for_dark"));
                break;
            case '-':
                drawable = Qhi(0, null, new int[]{0, zn.cJ(context, 6.0f), zn.cJ(context, 6.0f), 0}, null, Integer.valueOf(zn.cJ(context, 1.5f)), Integer.valueOf(Color.parseColor("#ABACB0")));
                break;
            case '.':
                drawable = Qhi(0, Integer.valueOf(Color.parseColor("#141A73E8")), new int[]{zn.cJ(context, 5.0f)}, null, null, null);
                break;
            case '/':
                Drawable ac3 = com.bytedance.sdk.component.utils.MQ.ac(context, "tt_shadow_lefterback_titlebar_press_withoutnight");
                StateListDrawable Qhi3 = Qhi(ac3, com.bytedance.sdk.component.utils.MQ.ac(context, "tt_shadow_lefterback_titlebar_withoutnight"));
                Qhi3.addState(new int[]{-16842910}, ac3);
                drawable = Qhi3;
                break;
            case '0':
                drawable = Qhi(1, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_e0e0e0")), null, null, null, null);
                break;
            case '1':
                drawable = new LayerDrawable(new Drawable[]{Qhi(0, -1, new int[]{0}, null, null, null), new ClipDrawable(Qhi(0, Integer.valueOf(Color.parseColor("#1A73E8")), new int[]{0}, null, null, null), 3, 1)});
                break;
            case '2':
                drawable = Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_4a90e2")), new int[]{zn.cJ(context, 4.0f)}, null, null, null);
                break;
            case '3':
                drawable = Qhi(Qhi(0, Integer.valueOf(Color.parseColor("#0D000000")), new int[]{zn.cJ(context, 2.0f)}, null, Integer.valueOf(zn.cJ(context, 1.0f)), Integer.valueOf(Color.parseColor("#1F000000"))), Qhi(0, -1, new int[]{zn.cJ(context, 2.0f)}, null, Integer.valueOf(zn.cJ(context, 1.0f)), Integer.valueOf(Color.parseColor("#1618231F"))));
                break;
            case '4':
                drawable = Qhi(0, null, new int[]{zn.cJ(context, 6.0f), 0, 0, zn.cJ(context, 6.0f)}, null, Integer.valueOf(zn.cJ(context, 1.5f)), Integer.valueOf(Color.parseColor("#ABACB0")));
                break;
            case '5':
                drawable = Qhi(1, Integer.valueOf(Color.parseColor("#30333333")), null, new int[]{zn.cJ(context, 28.0f), zn.cJ(context, 28.0f)}, null, null);
                break;
            case '6':
                Drawable ac4 = com.bytedance.sdk.component.utils.MQ.ac(context, "tt_lefterbackicon_titlebar_press");
                StateListDrawable stateListDrawable3 = new StateListDrawable();
                stateListDrawable3.addState(new int[0], ac4);
                stateListDrawable3.setAutoMirrored(true);
                rotateDrawable = stateListDrawable3;
                drawable = rotateDrawable;
                break;
            case '7':
                drawable = Qhi(0, Integer.valueOf(Color.parseColor("#ff007aff")), new int[]{zn.cJ(context, 18.0f)}, null, null, null);
                break;
            case '8':
                drawable = Qhi(0, Integer.valueOf(Color.parseColor("#33FFFFFF")), new int[]{zn.cJ(context, 15.0f)}, null, null, null);
                break;
            case '9':
                Drawable ac5 = com.bytedance.sdk.component.utils.MQ.ac(context, "tt_shadow_lefterback_titlebar_press");
                StateListDrawable Qhi4 = Qhi(ac5, com.bytedance.sdk.component.utils.MQ.ac(context, "tt_shadow_lefterback_titlebar"));
                Qhi4.addState(new int[]{-16842910}, ac5);
                drawable = Qhi4;
                break;
            case ':':
                drawable = Qhi(Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_fde6e6e6")), new int[]{zn.cJ(context, 5.0f), zn.cJ(context, 5.0f), 0, 0}, null, null, null), Qhi(0, Integer.valueOf(com.bytedance.sdk.component.utils.MQ.ROR(context, "tt_fdffffff")), new int[]{zn.cJ(context, 5.0f), zn.cJ(context, 5.0f), 0, 0}, null, null, null));
                break;
            case ';':
                RotateDrawable rotateDrawable2 = new RotateDrawable();
                rotateDrawable2.setDrawable(com.bytedance.sdk.component.utils.MQ.ac(context, "tt_normalscreen_loading"));
                rotateDrawable2.setFromDegrees(0.0f);
                rotateDrawable2.setToDegrees(360.0f);
                rotateDrawable2.setPivotX(0.5f);
                rotateDrawable2.setPivotY(0.5f);
                rotateDrawable = rotateDrawable2;
                drawable = rotateDrawable;
                break;
            case '<':
                drawable = Qhi(0, Integer.valueOf(Color.parseColor("#66161823")), new int[]{zn.cJ(context, 14.0f)}, null, null, null);
                break;
            case '=':
                drawable = Qhi(0, -1, new int[]{zn.cJ(context, 14.5f)}, null, null, null);
                break;
            case '>':
                drawable = com.bytedance.sdk.component.utils.MQ.ac(context, "tt_titlebar_close_drawable");
                break;
            default:
                drawable = null;
                break;
        }
        Qhi.put(str, new Pair<>(drawable, 1));
        return drawable;
    }

    private static void Qhi() {
        Map<String, Pair<? extends Drawable, Integer>> map = Qhi;
        if (map.size() < cJ.intValue()) {
            return;
        }
        String str = null;
        int i = Integer.MAX_VALUE;
        for (Map.Entry<String, Pair<? extends Drawable, Integer>> entry : map.entrySet()) {
            if (((Integer) entry.getValue().second).intValue() < i) {
                str = entry.getKey();
                i = ((Integer) entry.getValue().second).intValue();
                if (i == 1) {
                    break;
                }
            }
        }
        Qhi.remove(str);
    }

    private static GradientDrawable Qhi(int i, Integer num, int[] iArr, int[] iArr2, Integer num2, Integer num3) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(i);
        if (num != null) {
            gradientDrawable.setColor(num.intValue());
        }
        int length = iArr != null ? iArr.length : 0;
        if (length == 1) {
            gradientDrawable.setCornerRadius(iArr[0]);
        } else if (length == 4) {
            int i2 = iArr[0];
            int i3 = iArr[1];
            int i4 = iArr[2];
            int i5 = iArr[3];
            gradientDrawable.setCornerRadii(new float[]{i2, i2, i3, i3, i4, i4, i5, i5});
        }
        if (iArr2 != null && iArr2.length == 2) {
            gradientDrawable.setSize(iArr2[0], iArr2[1]);
        }
        if (num2 != null && num3 != null) {
            gradientDrawable.setStroke(num2.intValue(), num3.intValue());
        }
        return gradientDrawable;
    }

    private static StateListDrawable Qhi(Drawable drawable, Drawable drawable2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        if (drawable != null) {
            stateListDrawable.addState(new int[]{16842919}, drawable);
        }
        if (drawable2 != null) {
            stateListDrawable.addState(new int[0], drawable2);
        }
        return stateListDrawable;
    }

    public static Drawable Qhi(Context context, int i) {
        return Qhi(context, Color.parseColor("#1A73E8"), i);
    }

    public static Drawable Qhi(Context context, int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(zn.cJ(context, i2));
        return gradientDrawable;
    }
}

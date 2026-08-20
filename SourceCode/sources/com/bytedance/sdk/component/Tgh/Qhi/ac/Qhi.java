package com.bytedance.sdk.component.Tgh.Qhi.ac;

import android.text.TextUtils;
import com.appnext.ads.a;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh;
import com.bytedance.sdk.component.Tgh.Qhi.cJ.fl;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.ads.AdError;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventDebugUtils.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static final LinkedList<String> Qhi = new LinkedList<>();
    private static final LinkedList<String> cJ = new LinkedList<>();
    private static final LinkedList<String> ac = new LinkedList<>();
    private static final LinkedList<String> CJ = new LinkedList<>();
    private static final Map<String, Integer> fl = new HashMap();
    private static HashMap<String, Integer> Tgh = null;
    private static String ROR = "upload_init";
    private static int Sf = 0;
    private static int hm = 0;

    public static void Qhi() {
        if (Tgh != null) {
            return;
        }
        String[] strArr = {"first_view", "open_splash", "ad_landing_webview_init", "show_failed_topview", "adstyle_template_show", "splash_init_monitor_first", "download_video_succeed", "shake_skip", "receive", "video_over_auto", "render_time", "splash_ad", "preload_start", "mute", "covered", "download_image_failed", "splash_init_monitor_all", "preload_success_time", "download_video_start_sdk", "download_video_count", "not_showing_reason", "download_image_succeed", "load_video_success", "launch_covered", "download_video_prepare", "download_video_start", "boarding", "ad_wap_stat", "splash_pick", "preload_fail", "should_show", "adstyle_template_fill", "unmute", "preload_success", "show_failed", "stop_showing_monitor", "download_video_no_download", "track_url", "download_creative_duration", "adstyle_template_render", "download_video_count_splash_sdk", "landing_preload_finish", "adstyle_template_load", "load_ad_duration", "client_false_show", "client_false", "download_video_failed", "data_invalid", "topview_boarding", "topview_start_download", "topview_show_confirmed", "splash_start_download", "topview_show_rejected", "splash_no_download", "redownload_video_count", "topview_other_show", "topview_no_download", "ad_selected", "invalid_model", "topview_deliver", "ad_no_selected", "topview_ad_download_retry_label", "request", "response", "parse_finished", "front_performance", "ad_resp", "ad_resp_nodata", "preload_finish", "transit_show", "splash_switch", "block_splash_F2", "render_picture_time", "network_type", "play_start_error", "load_video_error", "render_picture_timeout", "py_loading_success", "download_status", "first_screen_load_finish", "landing_preload_failed", "data_received", "preload_result", "show_result", "reponse", "valid_time", "brand_satefy_context", "topview_ad_link_fail_label", "end_feed_request", "start_feed_request", "set_feed_data", "delayinstall_conflict_with_back_dialog", "clean_fetch_apk_head_failed", "cleanspace_download_after_quite_clean", "fps_too_low", "open_policy", "landing_perf_stats", "preload_topview", "show_effect_start", "dislike_monitor", "hour_show", "hour_skip", "triggered", "click_sound_switch", "enter_loft", "download_resume", "install_view_result", "contiguous_ad_event", "contiguous_ad_remove_event", "report_monitor", "open_landing_blank", "dynamic_ad", "report_load_failed", "ad_download_failed", "download_video_start_first_sdk", "splash_receive", "video_play", "clean_fetch_apk_head_switch_close", "label_external_permission", "pause_reserve_wifi_switch_status", "landing_download_dialog_show", "download_connect", "download_uncompleted", "pause_reserve_wifi_dialog_show", "download_io", "pause_reserve_wifi_confirm", "skvc_load_time", "segment_io", "click_no", "pause_reserve_wifi_cancel_on_wifi", "udp_stop", "mma_url", "error_save_sp", "download_notification_try_show", "ttd_pref_monitor", "item_above_the_fold_stay_time", "ttdownloader_unity", "bdad_query_log", "bdad_load_finish", "bdad_load", "bdad_load_fail", AdError.UNDEFINED_DOMAIN, "valid_stock", "show_filter", "splash_pk_result", "endcard_page_info", "page_on_create", "statistics_feed_docker", "show_search_card_word", "ad_new_video_render_start_label", "ad_new_video_play_start_label", "ad_new_video_ad_patch_data_set_null_label", "ad_new_video_ad_patch_play_label", "ad_new_video_ad_patch_render_label", "debug_touch_start", "try_second_request", "egg_unzip_success", "tap_2", "anti_0_result", "anti_2_result", "egg_unzip_no_start", "preload_no_start", "bind_impression_212202", "guide_auth_dialog_cancel", "show_im_entry", "sub_reco_impression_v2", "sync_request_log_mask", "no_send_sync_request", "load_timeout", "send_sync_request", "sync_request_not_show", "show_subv_tt_video_food", "track", "custom_event", "rd_landing_page_stat", "update_local_data", "showlimit", "upload_result", "debug_othershow", "debug_otherclick", "ad_show_time", "push_launch", "union_send_duplicate", "mnpl_js_finish_load", "mnpl_resource_finish_load", "mnpl_material_render_timeout", "mnpl_render_timing", "mnpl_vedio_interactive_timegap", "click_non_rectify_area", "start_impression", "end_impression", "picture_render_time", "splash_stop_show", "skip_post", "skan_show_start", "skan_show_end", "load_video_start", "rifle_ad_monitor", "download_video_redownload", "splash_video_quality", "splash_video_end", "splash_video_pause", "splash_video_failed", "adtrace_start_clear", "adtrace_clear_past_data", "adtrace_end_clear", "adtrace_write_success", "adtrace_write_failed", "adtrace_read_result", "adtrace_read_success", "adtrace_read_failed", "pick_model", "cache_model", "adtrace_reparse_file", "deeplink_failed_all", "ad_live_degenerate", "ad_live_miss", "live_play_fail", "sko_show_success", "sko_show_fail", "commerce_apps_open", "commerce_apps_jump", "pic_card_show", "live_ad_card_render_finish", "adtrace_select", "received_card_status", "live_ad_page_load_success", "mp_download_result", "download_video_cancel", "jump_count", "adtrace_try_show", "show_cart_entrance", "live_ad_page_load_fail", "click_interacted", "pop_up", "pop_up_cancel", "stream_loadtime", "mnpl_guide_comp_render", "thirdquartile", "customer_feed_pause", "customer_play_start", "customer_feed_break", "click_area_log", "customer_feed_continue", "customer_feed_play", "mnpl_resource_start_preload", "mnpl_resource_finish_preload", "customer_feed_over", "get_preload_ad", "web_inspect_status", "web_report_status", "preload_begin", "preload_end", "open_begin", "open_end", "pangle_live_sdk_monitor", FirebaseAnalytics.Param.SUCCESS, "rifle_load_state", "rifle_uri_load_state", "component_init", "component_release", "ad_lynx_download_sendAdLog", "dynamic2_render", "lynx_card_show", "pop_up_download", "live_shelf_commodity_show", "unity_fe_click", "enter_ads_explain", "adx_ads_switch", "personal_ads_switch", "qc_product_picture_cancel", "qc_product_picture_save", "qc_product_picture_press", "qc_product_detail_show", "qc_price_instruction_click", "qc_edit_sku_num_click", "service_description_page_duration", "enter_business_qualification_page ", "service_description_page_show", "order_words_fe", "qc_payment_mode_show", "qc_click_ali_pay", "qc_district_addr_click", "qc_auto_information_add", "qc_dial_consult_cancel_btn_click", "qc_dial_consult_show", "qc_maomadeng_click", "qc_maomadeng_show", "slide_product_big_picture", "qc_service_description_close", "appstore_manager_request", "preload_video_result", "preload_video_start", "adtrace_bind", "topview_ad_link_match_event", "skip_leisure_interact_render", "click_start_download", "ad_lynx_landing_page_exception", "lynx_page_res_download_monitor_event", "live_fail", "live_over", "render_live_picture_success", "render_live_picture_fail", "live_play_success", "live_play_close", "item_play_pver", "ad_gap_info", "item_play_over", "has_period_first_chance", "enter_live_auto", "mnpl_material_video_scene_show", "ad_rerank", "in_web_click", "post_request_failed", "destroy", "bidding_load", "bidding_receive", "in_web_scroll", "tobsdk_livesdk_live_show", "xigua_ad_rerank", "applink_unity", "top_ad_show", "top_button_show", "skip_button_show", "skip_click", "shake_show", "skip_result", "show_personal_compliance_button_click", "personal_compliance_click", "ad_click_result", "ad_preload_video", "popup_show", "topview_feed_down", "qr_scan", "qr_show", "topview_popup_show", "topview_feed_over", "topview_feed_show", "feed_down", "engine_ad_send", "permission_click", "policy_click", "download_start_click", "mini_playable_style_report", "load_detect", "aweme_show_info", "click_convert_anchor_detail_page", "click_anchor_gift_button", "show_anchor_gift_page", "click_anchor_gift_card", "show_anchor_gift_card", "anchor_convert_button", "show_anchor_page", "search_result_click", "sdk_session_launch", "not_use_app_link_sdk", "click_ios_check", "auto_open", "bind_click_area", "page_load", "show_finish", "next_fresh", "play_ready", "splash_pk_time", "unshow", "feed_show_failed", "othershow_cancel", "lu_cache", "realtime_splash_result", "channel_override_result", "internal_jump_live_status", "mnpl_video_play_backward", "splash_enter_foreground", "splash_enter_background", "button_light", "long_press", "webview_material_missing_key_error", "live_life_project_click_card", "mnpl_click_event", "show_anchor_convert_button", "bdar_log_info", "bdar_ad_request", "bdar_lynx_template_load_time", "bdar_lynx_fallback", "bdar_fetch_template_data", "bdar_lynx_render_time", "bdar_video_play_effective", "bdar_video_first_frame", "bdar_lynx_jsb_error", "invalidate_back_url_monitor_event", "lynx_page_plugin_exception_event", "live_custom_interaction", "pinch", "if_splash_card", "splash_card_show", "card_show_fail", "splash_card_click", "splash_card_close", "wind_icon_click", "excluded", "show_error", "toutiao_ad_receive", "show_ad", "toutiao_ad_excluded", "close_card", "lynx_status", "qpon_join", "apk_download_user", "comment_key_word_show", "v3_show_ad", "show_wish_button", "enterSection", "single_comment_show", "enter_product_detail", "xigua_ad_request", "qpon_apply", "splash_total_duration", "splash_render_duration", "download_template_duration", "homepage_hot", "homepage_follow", "homepage_fresh", "video_play_success", "general_search", "video_render_cost", "single_ad_render_cost", "unexpected_accurate_pause", "mnpl_interact_skip", "web_report_request_url", "web_report_init_status", "first_request", a.M, "mnpl_script_error", "open_wechat_failed_shake", "open_wechat_shacke", "open_wechat_success_shake", "options_popup", "close_pers_ads_type", "check_closed_type", "ad_guide_panel", "learn_ads", "learn_adx_ads", "learn_pers_ads", "resume_closed_type", "twist", "open_wechat_shake"};
        Tgh = new HashMap<>(446);
        for (int i = 0; i < 446; i++) {
            Tgh.put(strArr[i], 1);
        }
    }

    private static synchronized String cJ(String str) {
        String sb;
        synchronized (Qhi.class) {
            LinkedList<String> linkedList = cJ;
            if (linkedList.size() >= 10) {
                linkedList.removeFirst();
                linkedList.add(str);
            } else {
                linkedList.add(str);
            }
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it = linkedList.iterator();
            while (it.hasNext()) {
                sb2.append(it.next()).append(",");
            }
            sb = sb2.toString();
        }
        return sb;
    }

    private static synchronized String ac(String str) {
        String sb;
        synchronized (Qhi.class) {
            LinkedList<String> linkedList = ac;
            if (linkedList.size() >= 10) {
                linkedList.removeFirst();
                linkedList.add(str);
            } else {
                linkedList.add(str);
            }
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it = linkedList.iterator();
            while (it.hasNext()) {
                sb2.append(it.next()).append(",");
            }
            sb = sb2.toString();
        }
        return sb;
    }

    private static synchronized String Tgh() {
        String sb;
        synchronized (Qhi.class) {
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it = CJ.iterator();
            while (it.hasNext()) {
                sb2.append(it.next()).append(",");
            }
            sb = sb2.toString();
        }
        return sb;
    }

    private static synchronized void CJ(String str) {
        synchronized (Qhi.class) {
            LinkedList<String> linkedList = CJ;
            if (linkedList.size() >= 10) {
                linkedList.removeFirst();
                linkedList.add(str);
                return;
            }
            linkedList.add(str);
        }
    }

    public static String Qhi(Tgh tgh) {
        if (tgh == null || tgh.ROR() == null || ac()) {
            return null;
        }
        if (tgh.cJ() == 3) {
            return tgh.ROR().optString("event");
        }
        return tgh.ROR().optString("label");
    }

    public static String cJ(Tgh tgh) {
        if (tgh == null || tgh.ROR() == null || ac()) {
            return null;
        }
        return tgh.ROR().optString(SessionDescription.ATTR_TYPE);
    }

    public static int ac(Tgh tgh) {
        if (tgh == null || tgh.ROR() == null || !cJ()) {
            return -1;
        }
        try {
            return new JSONObject(tgh.ROR().optString("event_extra")).optInt("stats_index");
        } catch (JSONException unused) {
            return -1;
        }
    }

    public static synchronized int CJ(Tgh tgh) {
        synchronized (Qhi.class) {
            if (tgh != null) {
                if (tgh.ROR() != null) {
                    if (cJ()) {
                        try {
                            return new JSONObject(tgh.ROR().optString("ad_extra_data")).optInt("sdk_event_self_count");
                        } catch (Exception unused) {
                            return 0;
                        }
                    }
                    return 0;
                }
            }
            return 0;
        }
    }

    public static String fl(Tgh tgh) {
        if (tgh == null || tgh.ROR() == null || ac()) {
            return null;
        }
        String optString = tgh.ROR().optString("log_extra");
        if (!TextUtils.isEmpty(optString)) {
            try {
                return new JSONObject(optString).optString("req_id");
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public static boolean Qhi(String str) {
        HashMap<String, Integer> hashMap = Tgh;
        if (hashMap == null || str == null) {
            return false;
        }
        return hashMap.containsKey(str);
    }

    public static void Qhi(List<Tgh> list, int i) {
        try {
            if (hm.ROR().hpZ().ROR()) {
                for (Tgh tgh : list) {
                    if (tgh != null && tgh.hm() != 0) {
                        long currentTimeMillis = System.currentTimeMillis() - tgh.hm();
                        fl.CJ.dIT().incrementAndGet();
                        fl.CJ.Hf().getAndAdd(currentTimeMillis);
                        tgh.ac(System.currentTimeMillis());
                    }
                    if (tgh != null) {
                        Tgh(tgh);
                    }
                }
                fl.CJ.YB().getAndAdd(list.size());
            }
        } catch (Exception unused) {
        }
    }

    public static void Tgh(Tgh tgh) {
        try {
            if (tgh.CJ() == 0 && hm.ROR().hpZ() != null && hm.ROR().hpZ().Qhi()) {
                JSONObject ROR2 = tgh.ROR();
                String Qhi2 = Qhi(tgh);
                if (Qhi(Qhi2)) {
                    return;
                }
                fl(tgh);
                String optString = ROR2.optString("ad_extra_data");
                if (!TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject = new JSONObject(optString);
                    if (TextUtils.isEmpty(jSONObject.optString("will_send_labels"))) {
                        jSONObject.put("will_send_labels", ac(Qhi2 + "_" + hm(tgh)));
                        jSONObject.put("send_success_valid_labels", Tgh());
                    }
                    ROR2.put("ad_extra_data", jSONObject.toString());
                    return;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("will_send_labels", ac(Qhi2 + "_" + hm(tgh)));
                jSONObject2.put("send_success_valid_labels", Tgh());
                ROR2.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public static void ROR(Tgh tgh) {
        try {
            if (hm.ROR().hpZ().ROR()) {
                fl.CJ.Qhi(System.currentTimeMillis() - tgh.Sf());
                tgh.cJ(System.currentTimeMillis());
                if (tgh.CJ() == 0 && hm.ROR().hpZ() != null && hm.ROR().hpZ().Qhi()) {
                    String Qhi2 = Qhi(tgh);
                    if (Qhi(Qhi2)) {
                        return;
                    }
                    JSONObject ROR2 = tgh.ROR();
                    String optString = tgh.ROR().optString("ad_extra_data");
                    if (!TextUtils.isEmpty(optString)) {
                        JSONObject jSONObject = new JSONObject(optString);
                        if (TextUtils.isEmpty(jSONObject.optString("save_success_labels"))) {
                            jSONObject.put("save_success_labels", cJ(Qhi2 + "_" + hm(tgh)));
                        }
                        ROR2.put("ad_extra_data", jSONObject.toString());
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("save_success_labels", cJ(Qhi2 + "_" + hm(tgh)));
                    ROR2.put("ad_extra_data", jSONObject2.toString());
                }
            }
        } catch (Exception unused) {
        }
    }

    public static boolean cJ() {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        return hpZ != null && hpZ.Tgh() == 0;
    }

    public static boolean ac() {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        return hpZ != null && hpZ.Tgh() == 2;
    }

    public static boolean CJ() {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        return hpZ != null && hpZ.Tgh() == 1;
    }

    public static boolean fl() {
        return cJ() || CJ();
    }

    public static void Qhi(JSONObject jSONObject, com.bytedance.sdk.component.Tgh.Qhi.CJ.Qhi.cJ cJVar) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (hpZ != null && hpZ.cJ() && fl()) {
            jSONObject.optString("label");
            cJVar.fl();
        }
    }

    public static void Qhi(List<Tgh> list, int i, String str) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (hpZ == null || !hpZ.cJ() || list == null || ac()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (Tgh tgh : list) {
            if (tgh.CJ() == 0) {
                JSONObject ROR2 = tgh.ROR();
                String Qhi2 = Qhi(tgh);
                if (tgh.cJ() == 3) {
                    if (ROR2 != null) {
                        Qhi2 = ROR2.optString("event");
                    }
                    sb.append(" [v3:").append(Qhi2).append("] ");
                } else {
                    long Sf2 = Sf(tgh);
                    long hm2 = hm(tgh);
                    int CJ2 = CJ(tgh);
                    sb.append(" [").append(Sf2).append("_").append(Qhi2);
                    if (hm2 != 0) {
                        sb.append("_").append(hm2);
                    }
                    if (CJ2 == 0) {
                        sb.append("] ");
                    } else {
                        sb.append("_").append(CJ2).append("] ");
                    }
                }
                z = true;
            } else if (tgh.CJ() == 1) {
                sb.append(" [").append(ac(tgh)).append("_").append(cJ(tgh)).append("] ");
            }
        }
        if (z) {
            new StringBuilder("ads:").append((Object) sb);
            Qhi(i);
            list.size();
            return;
        }
        new StringBuilder("stats:").append((Object) sb);
        Qhi(i);
        list.size();
    }

    public static String Qhi(int i) {
        switch (i) {
            case 1:
                return "flush once";
            case 2:
                return "flush memory db";
            case 3:
                return "flush memory";
            case 4:
                return "new event";
            case 5:
                return "server busy";
            case 6:
                return "empty message";
            case 7:
                return "net error";
            default:
                return RewardedVideo.VIDEO_MODE_DEFAULT;
        }
    }

    private static void Qhi(Tgh tgh, String str, com.bytedance.sdk.component.Tgh.Qhi.Tgh tgh2) {
        String Qhi2 = Qhi(tgh);
        if (Qhi(Qhi2)) {
            return;
        }
        String fl2 = fl(tgh);
        if (tgh.CJ() == 0 && tgh2.Qhi()) {
            CJ(Qhi2 + "_" + hm(tgh) + "_" + fl2 + "_" + str);
        }
    }

    public static long Sf(Tgh tgh) {
        if (tgh == null || tgh.ROR() == null || !cJ()) {
            return 0L;
        }
        try {
            return new JSONObject(tgh.ROR().optString("ad_extra_data")).optLong("sdk_event_index");
        } catch (Exception e2) {
            e2.getMessage();
            return 0L;
        }
    }

    public static long hm(Tgh tgh) {
        if (tgh == null || tgh.ROR() == null || !cJ()) {
            return 0L;
        }
        try {
            return new JSONObject(tgh.ROR().optString("ad_extra_data")).optLong("sdk_event_valid_index");
        } catch (Exception e2) {
            e2.getMessage();
            return 0L;
        }
    }

    public static void Qhi(boolean z, int i, Tgh tgh) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
        if (ac() || hpZ == null || !hpZ.cJ()) {
            return;
        }
        Qhi(i);
        TextUtils.isEmpty(cJ(tgh));
        TextUtils.isEmpty(Qhi(tgh));
    }

    private static String Gm(Tgh tgh) {
        String optString;
        if (tgh == null || tgh.ROR() == null || !cJ()) {
            return null;
        }
        JSONObject ROR2 = tgh.ROR();
        if (tgh.CJ() == 1) {
            optString = ROR2.optString("event_extra");
        } else {
            optString = ROR2.optString("ad_extra_data");
        }
        try {
            return new JSONObject(optString).optString("sdk_session_id");
        } catch (JSONException e2) {
            e2.getMessage();
            return null;
        }
    }

    public static void WAv(Tgh tgh) {
        try {
            if (cJ()) {
                com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
                if (!TextUtils.isEmpty(tgh.ac())) {
                    cJ.Qhi(fl.CJ.dI(), 1);
                }
                if (hpZ == null || !hpZ.cJ()) {
                    return;
                }
                if (tgh.CJ() == 1) {
                    cJ(tgh);
                    ac(tgh);
                    tgh.ac();
                    Gm(tgh);
                } else if (tgh.CJ() == 0) {
                    if (tgh.cJ() == 3) {
                        if (tgh.ROR() != null) {
                            tgh.ROR().optString("event");
                            Sf(tgh);
                            hm(tgh);
                            tgh.ac();
                            Gm(tgh);
                            return;
                        }
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    if (hm(tgh) != 0) {
                        Qhi(tgh);
                    } else {
                        sb.append("v1_debug [label:").append(Qhi(tgh));
                    }
                    Sf(tgh);
                    tgh.ac();
                    Gm(tgh);
                }
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public static void Qhi(int i, List<Tgh> list, long j) {
        if (hm.ROR().hpZ().ROR()) {
            long currentTimeMillis = System.currentTimeMillis() - j;
            if (i == 200) {
                fl.CJ.EGK().getAndAdd(currentTimeMillis);
                fl.CJ.pv().incrementAndGet();
                fl.CJ.ots().getAndAdd(list.size());
                fl.CJ.PAe().getAndAdd(list.size());
                return;
            }
            if (i == -1) {
                fl.CJ.HLI().getAndAdd(list.size());
            } else {
                fl.CJ.MND().getAndAdd(list.size());
            }
            fl.CJ.gga().getAndAdd(currentTimeMillis);
            fl.CJ.ReL().incrementAndGet();
        }
    }

    public static void Qhi(List<Tgh> list, String str) {
        try {
            com.bytedance.sdk.component.Tgh.Qhi.Tgh hpZ = hm.ROR().hpZ();
            if (hpZ == null || !hpZ.ROR() || list == null) {
                return;
            }
            for (Tgh tgh : list) {
                if (tgh != null) {
                    Qhi(tgh, str, hpZ);
                }
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }
}

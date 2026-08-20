package com.yandex.metrica.impl.ob;

import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.impl.ob.C1811qf;
import com.yandex.metrica.impl.ob.E;
import com.yandex.metrica.impl.ob.X7;
import java.util.List;
import java.util.Locale;
/* renamed from: com.yandex.metrica.impl.ob.j8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1630j8 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f14971a = YandexMetrica.getLibraryApiLevel();

    /* renamed from: b  reason: collision with root package name */
    private static final N7 f14972b;

    /* renamed from: c  reason: collision with root package name */
    private static final P7 f14973c;

    /* renamed from: d  reason: collision with root package name */
    private static final M7 f14974d;

    /* renamed from: com.yandex.metrica.impl.ob.j8$a */
    /* loaded from: classes5.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f14975a = A2.a("incremental_id", "timestamp", "data");

        /* renamed from: com.yandex.metrica.impl.ob.j8$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public interface InterfaceC0355a {

            /* renamed from: a  reason: collision with root package name */
            public static final String f14976a;

            /* renamed from: b  reason: collision with root package name */
            public static final String f14977b;

            static {
                Locale locale = Locale.US;
                f14976a = String.format(locale, "CREATE TABLE IF NOT EXISTS %s (incremental_id INTEGER NOT NULL,timestamp INTEGER, data TEXT)", "lbs_dat");
                f14977b = String.format(locale, "DROP TABLE IF EXISTS %s", "lbs_dat");
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.j8$a$b */
        /* loaded from: classes5.dex */
        public interface b {

            /* renamed from: a  reason: collision with root package name */
            public static final String f14978a;

            /* renamed from: b  reason: collision with root package name */
            public static final String f14979b;

            static {
                Locale locale = Locale.US;
                f14978a = String.format(locale, "CREATE TABLE IF NOT EXISTS %s (incremental_id INTEGER NOT NULL,timestamp INTEGER, data TEXT)", "l_dat");
                f14979b = String.format(locale, "DROP TABLE IF EXISTS %s", "l_dat");
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.j8$b */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f14980a = A2.a("data_key", "value");
    }

    /* renamed from: com.yandex.metrica.impl.ob.j8$c */
    /* loaded from: classes5.dex */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f14981a = A2.a("key", "value", SessionDescription.ATTR_TYPE);
    }

    /* renamed from: com.yandex.metrica.impl.ob.j8$d */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f14982a = A2.a("id", "number", "global_number", "number_of_type", "name", "value", SessionDescription.ATTR_TYPE, "time", "session_id", "wifi_network_info", "cell_info", "location_info", "error_environment", "user_info", "session_type", "app_environment", "app_environment_revision", "truncated", "connection_type", "cellular_connection_type", "custom_type", "wifi_access_point", "encrypting_mode", "profile_id", "first_occurrence_status", "battery_charge_type", "collection_mode", "has_omitted_data", "call_state", "source", "attribution_id_changed", "open_id", "extras");

        /* renamed from: b  reason: collision with root package name */
        public static final String f14983b = "CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY,name TEXT,value TEXT,number INTEGER,global_number INTEGER,number_of_type INTEGER,type INTEGER,time INTEGER,session_id TEXT,wifi_network_info TEXT DEFAULT '',cell_info TEXT DEFAULT '',location_info TEXT DEFAULT '',error_environment TEXT,user_info TEXT,session_type INTEGER DEFAULT " + EnumC1529f6.FOREGROUND.a() + ",app_environment TEXT DEFAULT '{}',app_environment_revision INTEGER DEFAULT 0,truncated INTEGER DEFAULT 0,connection_type INTEGER DEFAULT 2,cellular_connection_type TEXT,custom_type INTEGER DEFAULT 0, wifi_access_point TEXT, encrypting_mode INTEGER DEFAULT " + Em.NONE.a() + ", profile_id TEXT, first_occurrence_status INTEGER DEFAULT 0, battery_charge_type INTEGER DEFAULT " + E.b.a.UNKNOWN.a() + ", collection_mode TEXT, has_omitted_data INTEGER DEFAULT -1, call_state INTEGER DEFAULT 0, source INTEGER DEFAULT 0, attribution_id_changed INTEGER DEFAULT 0, open_id INTEGER DEFAULT " + new C1811qf.d.a().w + ", extras BLOB )";
    }

    /* renamed from: com.yandex.metrica.impl.ob.j8$e */
    /* loaded from: classes5.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static final List<String> f14984a = A2.a("id", "start_time", "network_info", "report_request_parameters", "server_time_offset", SessionDescription.ATTR_TYPE, "obtained_before_first_sync");

        /* renamed from: b  reason: collision with root package name */
        public static final String f14985b = "CREATE TABLE IF NOT EXISTS sessions (id INTEGER,start_time INTEGER,network_info TEXT,report_request_parameters TEXT,server_time_offset INTEGER,type INTEGER DEFAULT " + EnumC1529f6.FOREGROUND.a() + ",obtained_before_first_sync INTEGER DEFAULT 0 )";

        /* renamed from: c  reason: collision with root package name */
        public static final String f14986c;

        /* renamed from: d  reason: collision with root package name */
        public static final String f14987d;

        static {
            Locale locale = Locale.US;
            f14986c = String.format(locale, "SELECT DISTINCT %s  FROM %s WHERE %s >=0 AND (SELECT count() FROM %5$s WHERE %5$s.%6$s = %2$s.%3$s AND %5$s.%7$s = %2$s.%4$s) > 0 ORDER BY %3$s LIMIT 1", "report_request_parameters", Constants.SESSIONS, "id", SessionDescription.ATTR_TYPE, "reports", "session_id", "session_type");
            f14987d = String.format(locale, "(select count(%s.%s) from %s where %s.%s = %s.%s) = 0 and cast(%s as integer) < ?", "reports", "id", "reports", "reports", "session_id", Constants.SESSIONS, "id", "id");
        }
    }

    static {
        N7 n7 = new N7();
        f14972b = n7;
        P7 p7 = new P7();
        f14973c = p7;
        f14974d = new M7(n7, p7, new X7.b());
    }

    public static M7 a() {
        return f14974d;
    }
}

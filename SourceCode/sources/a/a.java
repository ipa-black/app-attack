package a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.Flushable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f9a;

    static {
        HandlerThread handlerThread = new HandlerThread("BMAnalyticHandlerThread");
        handlerThread.start();
        f9a = new Handler(handlerThread.getLooper());
    }

    public static <T> List<List<T>> a(List<T> list, int i) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + i;
            arrayList.add(list.subList(i2, Math.min(i3, size)));
            i2 = i3;
        }
        return arrayList;
    }

    public static JSONArray a(List<?> list) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : list) {
            if (obj instanceof List) {
                obj = a((List) obj);
            } else if (obj instanceof Map) {
                obj = a((Map) obj);
            }
            jSONArray.put(obj);
        }
        return jSONArray;
    }

    public static JSONObject a(Map<?, ?> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            try {
                String obj = entry.getKey().toString();
                Object value = entry.getValue();
                if (!TextUtils.isEmpty(obj) && value != null) {
                    if (value instanceof List) {
                        value = a((List) value);
                    } else if (value instanceof Map) {
                        value = a((Map) value);
                    }
                    jSONObject.put(obj, value);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Runnable runnable) {
        f9a.removeCallbacks(runnable);
    }

    public static void a(Runnable runnable, long j) {
        if (j == 0 && a(f9a)) {
            runnable.run();
        } else {
            f9a.postDelayed(runnable, j);
        }
    }

    public static boolean a(Handler handler) {
        return Looper.myLooper() == handler.getLooper();
    }

    public static void b(Runnable runnable) {
        a(runnable, 0L);
    }

    public static void b(Runnable runnable, long j) {
        a(runnable);
        a(runnable, j);
    }
}

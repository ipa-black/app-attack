package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.primitives.SignedBytes;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: assets/audience_network.dex */
public final class IK {
    public static IK A01;
    public static byte[] A02;
    public static String[] A03 = {"lby1W0wNbQrJZLPqMH4DTOw3yxUdqdf", "kgmV30Pytio8Y45c0SmevPSfJ", "GuqAlZnTPhAyqf6xpABukX78gW1eK", "0NViSQPmvGXLcgxETt4LuQqf8msO5qX", "Lug9XUXTwCkms8e17b8k", "9KOEFfUvG6glq1MfonBkT6Lvp1EWxJyS", "tUrZTe4M4NOwFWRIXhIm4QJOvCAxV", "2InOXM9Ds0dFubkAVSo31GYyY3vE8A8q"};
    public static final String[] A04;
    public static final String[] A05;
    public final SharedPreferences A00;

    public static String A0Q(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A03[5].charAt(10) != 'g') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[3] = "rwxiKY1yX8M1uCycGOqUPfCL86zZ3gS";
            strArr[0] = "P38LhqS18Cw18aUWRDVsuYtPAT7MPJu";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 46);
            i4++;
        }
    }

    public static void A0b() {
        A02 = new byte[]{108, 73, 107, 100, 105, 111, 102, 82, 126, Byte.MAX_VALUE, 101, 120, Byte.MAX_VALUE, 100, 116, 3, 47, 46, 52, 41, 46, 53, 37, Byte.MAX_VALUE, 106, 92, 70, 19, 68, 90, 95, 95, 19, 81, 86, 19, 71, 82, 88, 86, 93, 19, 71, 92, 19, 82, 93, 92, 71, 91, 86, 65, 19, 87, 86, SignedBytes.MAX_POWER_OF_TWO, 71, 90, 93, 82, 71, 90, 92, 93, 29, 6, 17, 25, 8, 112, 109, 112, 109, 0, 45, 58, 50, 35, 91, 71, 91, 71, 70, 70, 70, 43, 123, 108, 100, 117, 125, 12, 10, 121, 123, 123, 113, 124, 125, 118, 108, 121, 116, 71, 123, 116, 113, 123, 115, 107, 71, 123, 119, 118, 126, 113, Byte.MAX_VALUE, 34, 32, 32, 42, 39, 38, 45, 55, 34, 47, 28, 32, 47, 42, 32, 40, 48, 28, 32, 44, 45, 37, 42, 36, 109, 55, 52, 44, 28, 48, 55, 38, 51, 28, 32, 34, 45, 32, 38, 47, 28, 33, 54, 55, 55, 44, 45, 28, 55, 38, 59, 55, 25, 27, 27, 17, 28, 29, 22, 12, 25, 20, 39, 27, 20, 17, 27, 19, 11, 39, 27, 23, 22, 30, 17, 31, 86, 12, 15, 23, 39, 11, 12, 29, 8, 39, 27, 23, 22, 30, 17, 10, 21, 39, 26, 13, 12, 12, 23, 22, 39, 12, 29, 0, 12, 3, 1, 1, 11, 6, 7, 12, 22, 3, 14, 61, 1, 14, 11, 1, 9, 17, 61, 1, 13, 12, 4, 11, 5, 76, 22, 21, 13, 61, 17, 22, 7, 18, 61, 1, 13, 12, 4, 11, 16, 15, 3, 22, 11, 13, 12, 68, 70, 70, 76, 65, SignedBytes.MAX_POWER_OF_TWO, 75, 81, 68, 73, 122, 70, 73, 76, 70, 78, 86, 122, 70, 74, 75, 67, 76, 66, 11, 81, 82, 74, 122, 86, 81, SignedBytes.MAX_POWER_OF_TWO, 85, 122, 70, 74, 75, 67, 76, 87, 72, 68, 81, 76, 74, 75, 122, 71, 74, 65, 92, 30, 28, 28, 22, 27, 26, 17, 11, 30, 19, 32, 28, 19, 22, 28, 20, 12, 32, 28, 16, 17, 25, 22, 24, 81, 11, 8, 16, 32, 12, 11, 26, 15, 32, 28, 16, 17, 25, 22, 13, 18, 30, 11, 22, 16, 17, 32, 11, 22, 11, 19, 26, 100, 97, 107, 114, 90, 100, 102, 102, 96, 117, 113, 100, 103, 105, 96, 90, 118, 113, 100, 102, 110, 113, 119, 100, 102, 96, 90, 102, 106, 107, 113, 96, 125, 113, 90, 99, 108, 105, 113, 96, 119, 90, 118, 108, Byte.MAX_VALUE, 96, 23, 18, 24, 1, 41, 23, 21, 21, 19, 6, 2, 23, 20, 26, 19, 41, 5, 2, 23, 21, 29, 2, 4, 23, 21, 19, 41, 26, 19, 24, 17, 2, 30, 63, 58, 48, 41, 1, 63, 58, 1, 58, 59, 42, 63, 55, 50, 45, 1, 61, 50, 55, 61, 53, 63, 60, 50, 59, 121, 124, 118, 111, 71, 121, 118, 124, 106, 119, 113, 124, 71, 121, 116, 116, 119, 111, 71, 116, 119, 121, 124, 71, 124, 109, 106, 113, 118, Byte.MAX_VALUE, 71, 107, 112, 119, 111, 113, 118, Byte.MAX_VALUE, 31, 26, 16, 9, 33, 31, 16, 26, 12, 17, 23, 26, 33, 31, 16, 12, 33, 26, 27, 10, 27, 29, 10, 17, 12, 33, 27, 16, 31, 28, 18, 27, 46, 43, 33, 56, 16, 46, 33, 43, 61, 32, 38, 43, 16, 46, 33, 61, 16, 43, 42, 59, 42, 44, 59, 32, 61, 16, 59, 38, 34, 42, 32, 58, 59, 16, 34, 60, 62, 59, 49, 40, 0, 62, 49, 59, 45, 48, 54, 59, 0, 61, 62, 49, 49, 58, 45, 0, 58, 39, 43, 45, 62, 0, 55, 54, 49, 43, 44, 0, 57, 54, 39, 0, 58, 49, 62, 61, 51, 58, 59, 112, 117, Byte.MAX_VALUE, 102, 78, 112, Byte.MAX_VALUE, 117, 99, 126, 120, 117, 78, 115, 125, 112, 114, 122, 125, 120, 98, 101, 116, 117, 78, 120, Byte.MAX_VALUE, 101, 116, Byte.MAX_VALUE, 101, 78, 100, 99, 125, 78, 97, 99, 116, 119, 120, 105, 116, 98, 33, 36, 46, 55, 31, 33, 46, 36, 50, 47, 41, 36, 31, 34, 44, 47, 35, 43, 31, 53, 46, 51, 33, 38, 37, 31, 48, 44, 33, 57, 33, 34, 44, 37, 31, 39, 33, 45, 37, 51, 31, 35, 33, 35, 40, 37, 5, 0, 10, 19, 59, 5, 10, 0, 22, 11, 13, 0, 59, 6, 29, 20, 5, 23, 23, 59, 20, 5, 7, 15, 5, 3, 1, 59, 0, 1, 16, 1, 7, 16, 13, 11, 10, 59, 2, 11, 22, 59, 0, 1, 1, 20, 8, 13, 10, 15, 23, 115, 118, 124, 101, 77, 115, 124, 118, 96, 125, 123, 118, 77, 113, 115, 113, 122, 119, 77, Byte.MAX_VALUE, 125, 118, 103, 126, 119, 77, Byte.MAX_VALUE, 115, 106, 77, 97, 123, 104, 119, 28, 25, 19, 10, 34, 28, 19, 25, 15, 18, 20, 25, 34, 30, 28, 30, 21, 24, 34, 16, 18, 25, 8, 17, 24, 34, 15, 24, 9, 15, 4, 34, 17, 20, 16, 20, 9, 69, SignedBytes.MAX_POWER_OF_TWO, 74, 83, 123, 69, 74, SignedBytes.MAX_POWER_OF_TWO, 86, 75, 77, SignedBytes.MAX_POWER_OF_TWO, 123, 71, 69, 86, 75, 81, 87, 65, 72, 123, 83, 76, 77, 80, 65, 123, 77, 74, 80, 65, 86, 87, 80, 77, 80, 77, 69, 72, 97, 100, 110, 119, 95, 97, 110, 100, 114, 111, 105, 100, 95, 99, 111, 109, 112, 114, 101, 115, 115, 95, 105, 109, 97, 103, 101, 115, 95, 100, 117, 114, 105, 110, 103, 95, 100, 111, 119, 110, 108, 111, 97, 100, 71, 66, 72, 81, 121, 71, 72, 66, 84, 73, 79, 66, 121, 66, 67, SignedBytes.MAX_POWER_OF_TWO, 71, 83, 74, 82, 121, 71, 85, 85, 67, 82, 121, 86, 84, 67, 74, 73, 71, 66, 121, 85, 79, 92, 67, 121, 68, 95, 82, 67, 85, 126, 123, 113, 104, SignedBytes.MAX_POWER_OF_TWO, 126, 113, 123, 109, 112, 118, 123, SignedBytes.MAX_POWER_OF_TWO, 123, 118, 108, 126, 125, 115, 122, SignedBytes.MAX_POWER_OF_TWO, 111, 115, 126, 102, 126, 125, 115, 122, SignedBytes.MAX_POWER_OF_TWO, 111, 109, 122, 124, 126, 
        124, 119, 122, 125, 120, 114, 107, 67, 125, 114, 120, 110, 115, 117, 120, 67, 120, 115, 67, 114, 115, 104, 67, 105, 111, 121, 67, 111, 104, 125, 104, 121, 67, 116, 125, 114, 120, 112, 121, 110, 55, 50, 56, 33, 9, 55, 56, 50, 36, 57, 63, 50, 9, 51, 56, 55, 52, 58, 51, 9, 56, 55, 34, 63, 32, 51, 9, 48, 35, 56, 56, 51, 58, 80, 85, 95, 70, 110, 80, 95, 85, 67, 94, 88, 85, 110, 84, 73, 94, 110, 65, 93, 80, 72, 84, 67, 110, 82, 80, 82, 89, 84, 110, 92, 80, 73, 110, 66, 88, 75, 84, 12, 9, 3, 26, 50, 12, 3, 9, 31, 2, 4, 9, 50, 11, 12, 4, 1, 50, 12, 9, 50, 1, 2, 12, 9, 50, 2, 3, 50, 9, 4, 30, 6, 50, 8, 31, 31, 2, 31, 30, 120, 125, 119, 110, 70, 120, 119, 125, 107, 118, 112, 125, 70, Byte.MAX_VALUE, 120, 112, 117, 70, 118, 119, 70, 110, 124, 123, 111, 112, 124, 110, 70, 124, 107, 107, 118, 107, 106, 106, 111, 101, 124, 84, 106, 101, 111, 121, 100, 98, 111, 84, 109, 100, 121, 104, 110, 84, 99, 106, 121, 111, 124, 106, 121, 110, 84, 106, 104, 104, 110, 103, 110, 121, 106, Byte.MAX_VALUE, 98, 100, 101, 10, 15, 5, 28, 52, 10, 5, 15, 25, 4, 2, 15, 52, 3, 2, 15, 14, 52, 29, 2, 15, 14, 4, 27, 25, 4, 12, 25, 14, 24, 24, 52, 10, 5, 2, 6, 10, 31, 2, 4, 5, 21, 16, 26, 3, 43, 21, 26, 16, 6, 27, 29, 16, 43, 29, 25, 21, 19, 17, 43, 23, 21, 23, 28, 17, 43, 7, 0, 27, 6, 17, 43, 22, 13, 0, 17, 43, 23, 27, 1, 26, 0, 106, 111, 101, 124, 84, 106, 101, 111, 121, 100, 98, 111, 84, 98, 101, Byte.MAX_VALUE, 110, 101, Byte.MAX_VALUE, 84, 101, 100, 84, 101, 110, 124, 84, Byte.MAX_VALUE, 106, 120, 96, 43, 46, 36, 61, 21, 43, 36, 46, 56, 37, 35, 46, 21, 39, 47, 39, 37, 56, 51, 21, 37, 58, 62, 71, 66, 72, 81, 121, 71, 72, 66, 84, 73, 79, 66, 121, 75, 84, 69, 121, 79, 75, 86, 84, 67, 85, 85, 79, 73, 72, 121, SignedBytes.MAX_POWER_OF_TWO, 73, 84, 121, 72, 71, 82, 79, 80, 67, 121, 80, 79, 66, 67, 73, 121, 71, 66, 85, 121, 80, 20, 121, 124, 118, 111, 71, 121, 118, 124, 106, 119, 113, 124, 71, 118, 121, 108, 113, 110, 125, 71, 123, 121, 106, 119, 109, 107, 125, 116, 71, 125, 96, 108, 125, 118, 107, 113, 119, 118, 71, 110, 121, 106, 113, 121, 118, 108, 103, 98, 104, 113, 89, 103, 104, 98, 116, 105, 111, 98, 89, 104, 103, 114, 111, 112, 99, 89, 104, 99, 113, 89, 101, 103, 116, 105, 115, 117, 99, 106, 89, 98, 99, 117, 111, 97, 104, 124, 121, 115, 106, 66, 124, 115, 121, 111, 114, 116, 121, 66, 115, 120, 105, 106, 114, 111, 118, 66, 121, 120, 123, 124, 104, 113, 105, 66, 126, 114, 115, 115, 120, 126, 105, 116, 114, 115, 66, 105, 116, 112, 120, 114, 104, 105, 66, 112, 110, 56, 61, 55, 46, 6, 56, 55, 61, 43, 54, 48, 61, 6, 55, 60, 45, 46, 54, 43, 50, 6, 61, 60, 63, 56, 44, 53, 45, 6, 43, 60, 56, 61, 6, 45, 48, 52, 60, 54, 44, 45, 6, 52, 42, 86, 83, 89, SignedBytes.MAX_POWER_OF_TWO, 104, 86, 89, 83, 69, 88, 94, 83, 104, 89, 82, 67, SignedBytes.MAX_POWER_OF_TWO, 88, 69, 92, 104, 83, 82, 81, 86, 66, 91, 67, 104, 69, 82, 67, 69, 94, 82, 68, 104, 89, 66, 90, 91, 94, 84, 77, 101, 91, 84, 94, 72, 85, 83, 94, 101, 84, 95, 78, 77, 85, 72, 81, 101, 94, 95, 92, 91, 79, 86, 78, 101, 78, 82, 72, 85, 78, 78, 86, 95, 101, 78, 83, 87, 95, 85, 79, 78, 101, 87, 73, 52, 49, 59, 34, 10, 52, 59, 49, 39, 58, 60, 49, 10, 59, 48, 33, 34, 58, 39, 62, 10, 49, 48, 51, 52, 32, 57, 33, 10, 33, 60, 56, 48, 58, 32, 33, 10, 56, 38, 14, 11, 1, 24, 48, 14, 1, 11, 29, 0, 6, 11, 48, 0, 27, 28, 3, 48, 10, 1, 14, 13, 3, 10, 11, 109, 104, 98, 123, 83, 109, 98, 104, 126, 99, 101, 104, 83, 126, 105, 97, 99, 122, 105, 83, 125, 121, 105, 126, 117, 83, 124, 109, 126, 120, 83, 106, 126, 99, 97, 83, 111, 109, 111, 100, 105, 83, 103, 105, 117, 58, 63, 53, 44, 4, 58, 53, 63, 41, 52, 50, 63, 4, 41, 62, 43, 52, 41, 47, 4, 43, 41, 62, 40, 62, 53, 47, 58, 47, 50, 52, 53, 4, 62, 41, 41, 52, 41, 4, 44, 51, 62, 53, 4, 53, 52, 4, 50, 54, 43, 41, 62, 40, 40, 50, 52, 53, 35, 38, 44, 53, 29, 35, 44, 38, 48, 45, 43, 38, 29, 48, 39, 50, 45, 48, 54, 29, 50, 48, 39, 49, 39, 44, 54, 35, 54, 43, 45, 44, 29, 39, 48, 48, 45, 48, 49, 29, 43, 44, 49, 54, 39, 35, 38, 29, 45, 36, 29, 43, 44, 54, 39, 48, 44, 35, 46, 91, 94, 84, 77, 101, 91, 84, 94, 72, 85, 83, 94, 101, 73, 82, 85, 79, 86, 94, 101, 88, 86, 85, 89, 81, 101, 73, 67, 84, 89, 101, 85, 84, 101, 88, 91, 89, 81, 93, 72, 85, 79, 84, 94, 45, 40, 34, 59, 19, 45, 34, 40, 62, 35, 37, 40, 19, 63, 36, 35, 57, 32, 40, 19, 36, 37, 40, 41, 19, 32, 35, 45, 40, 41, 62, 7, 2, 8, 17, 57, 7, 8, 2, 20, 9, 15, 2, 57, 21, 14, 9, 19, 10, 2, 57, 
        15, 8, 15, 18, 57, 19, 8, 21, 13, 15, 22, 22, 7, 4, 10, 3, 57, 21, 3, 5, 9, 8, 2, 21, 57, 5, 9, 11, 22, 10, 3, 18, 3, 41, 44, 38, 63, 23, 41, 38, 44, 58, 39, 33, 44, 23, 59, 32, 39, 61, 36, 44, 23, 36, 41, 61, 38, 43, 32, 23, 56, 36, 41, 49, 23, 59, 60, 39, 58, 45, 23, 33, 38, 23, 39, 62, 45, 58, 36, 41, 49, 114, 119, 125, 100, 76, 114, 125, 119, 97, 124, 122, 119, 76, 96, 123, 124, 102, Byte.MAX_VALUE, 119, 76, 97, 118, 96, 118, 103, 76, 117, 124, 112, 102, 96, 76, 124, 125, 76, 125, 114, 103, 122, 101, 118, 76, 97, 118, 99, 124, 97, 103, 122, 125, 116, 122, Byte.MAX_VALUE, 117, 108, 68, 122, 117, Byte.MAX_VALUE, 105, 116, 114, Byte.MAX_VALUE, 68, 110, 121, 109, 105, 120, 21, 16, 26, 3, 43, 21, 26, 16, 6, 27, 29, 16, 43, 1, 7, 17, 43, 23, 21, 23, 28, 17, 43, 25, 27, 16, 1, 24, 17, 43, 18, 27, 6, 43, 29, 25, 21, 19, 17, 7, 91, 94, 84, 77, 101, 91, 84, 94, 72, 85, 83, 94, 101, 79, 73, 95, 101, 73, 78, 95, 91, 87, 83, 84, 93, 101, 83, 87, 91, 93, 95, 101, 94, 95, 89, 85, 94, 83, 84, 93, 51, 54, 60, 37, 13, 51, 60, 54, 32, 61, 59, 54, 13, 37, 58, 59, 38, 55, 62, 59, 33, 38, 55, 54, 13, 59, 60, 38, 55, 60, 38, 13, 39, 32, 62, 13, 34, 32, 55, 52, 59, 42, 55, 33, 35, 38, 44, 53, 29, 35, 49, 49, 39, 54, 29, 36, 39, 54, 33, 42, 43, 44, 37, 29, 55, 44, 43, 36, 43, 39, 38, 26, 31, 21, 12, 36, 25, 26, 21, 21, 30, 9, 36, 21, 20, 15, 18, 29, 2, 36, 26, 31, 36, 23, 20, 26, 31, 30, 31, 36, 20, 21, 36, 26, 8, 8, 30, 15, 8, 36, 23, 20, 26, 31, 30, 31, 66, 71, 77, 84, 124, 65, 70, 77, SignedBytes.MAX_POWER_OF_TWO, 75, 78, 66, 81, 72, 124, 81, 70, 83, 76, 81, 87, 124, 74, 77, 87, 70, 81, 85, 66, 79, 124, 78, 80, 52, 49, 59, 34, 10, 55, 57, 58, 54, 62, 10, 57, 58, 54, 62, 38, 54, 39, 48, 48, 59, 37, 32, 42, 51, 27, 39, 40, 45, 39, 47, 55, 27, 55, 33, 39, 43, 42, 32, 27, 39, 44, 37, 42, 42, 33, 40, 27, 33, 42, 37, 38, 40, 33, 32, 89, 92, 86, 79, 103, 91, 74, 89, 75, 80, 103, 75, 80, 81, 93, 84, 92, 103, 93, 86, 89, 90, 84, 93, 92, 87, 82, 88, 65, 105, 85, 66, 87, 105, 87, 88, 95, 91, 87, 66, 95, 89, 88, 105, 82, 83, 90, 87, 79, 105, 91, 69, 58, 63, 53, 44, 4, 56, 47, 58, 4, 54, 50, 53, 4, 40, 56, 58, 55, 62, 4, 58, 53, 50, 54, 58, 47, 50, 52, 53, 4, 43, 62, 41, 56, 62, 53, 47, 58, 60, 62, 47, 42, 32, 57, 17, 42, 33, 17, 34, 43, 61, 61, 17, 61, 58, 60, 39, 45, 58, 17, 61, 43, 45, 33, 32, 42, 17, 45, 38, 47, 32, 32, 43, 34, 17, 39, 35, 62, 10, 15, 5, 28, 52, 14, 5, 10, 9, 7, 14, 52, 10, 30, 31, 4, 52, 15, 14, 24, 31, 25, 4, 18, 52, 7, 14, 10, 0, 24, 65, 68, 78, 87, Byte.MAX_VALUE, 69, 78, 65, 66, 76, 69, Byte.MAX_VALUE, 66, 73, 68, 68, 69, 82, Byte.MAX_VALUE, 84, 79, 75, 69, 78, Byte.MAX_VALUE, 73, 78, 70, 79, 94, 91, 81, 72, 96, 90, 81, 94, 93, 83, 90, 96, 91, 90, 93, 74, 88, 96, 80, 73, 90, 77, 83, 94, 70, 24, 29, 23, 14, 38, 28, 23, 24, 27, 21, 28, 38, 28, 1, 22, 9, 21, 24, 0, 28, 11, 38, 26, 24, 26, 17, 28, 13, 8, 2, 27, 51, 9, 2, 13, 14, 0, 9, 51, 9, 20, 3, 28, 0, 13, 21, 9, 30, 51, 15, 13, 15, 4, 9, 51, 10, 3, 30, 51, 8, 31, 0, 77, 72, 66, 91, 115, 73, 66, 77, 78, SignedBytes.MAX_POWER_OF_TWO, 73, 115, 73, 84, 67, 92, SignedBytes.MAX_POWER_OF_TWO, 77, 85, 73, 94, 115, 90, 30, 27, 30, 20, 13, 37, 31, 20, 27, 24, 22, 31, 37, 28, 15, 20, 20, 31, 22, 100, 97, 107, 114, 90, 96, 107, 100, 103, 105, 96, 90, 108, 107, 105, 108, 107, 96, 90, 125, 90, 106, 112, 113, 90, 107, 106, 107, 90, 99, 112, 105, 105, 118, 102, 119, 96, 96, 107, 90, 106, 107, 90, 118, 97, 110, 79, 74, SignedBytes.MAX_POWER_OF_TWO, 89, 113, 75, SignedBytes.MAX_POWER_OF_TWO, 79, 76, 66, 75, 113, SignedBytes.MAX_POWER_OF_TWO, 75, 90, 89, 65, 92, 69, 96, 101, 111, 118, 94, 100, 111, 96, 99, 109, 100, 94, 113, 115, 100, 109, 110, 96, 101, 15, 10, 0, 25, 49, 11, 0, 15, 12, 2, 11, 49, 28, 15, 9, 11, 49, 29, 6, 15, 5, 11, 20, 17, 27, 2, 42, 16, 27, 20, 23, 25, 16, 42, 6, 12, 27, 22, 117, 112, 122, 99, 75, 113, 122, 112, 75, 119, 117, 102, 112, 103, 75, 119, 120, 125, 119, Byte.MAX_VALUE, 117, 118, 120, 113, 121, 124, 118, 111, 71, 125, 96, 104, 119, 107, 125, 71, 110, 113, 124, 125, 119, 71, 111, 121, 108, 123, 112, 71, 108, 113, 117, 125, 123, 126, 116, 109, 69, 124, 115, 118, 110, Byte.MAX_VALUE, 104, 69, 120, 115, 126, 126, 115, 116, 125, 69, 110, 117, 113, Byte.MAX_VALUE, 116, 43, 46, 36, 61, 21, 44, 37, 56, 41, 47, 21, 46, 47, 60, 35, 41, 47, 21, 57, 41, 56, 47, 47, 36, 21, 43, 38, 61, 43, 51, 57, 21, 37, 36, 56, 61, 55, 46, 6, 48, 56, 59, 6, 58, 44, 42, 45, 54, 52, 6, 
        42, 58, 49, 60, 52, 56, 42, 6, 63, 48, 33, 6, 60, 55, 56, 59, 53, 60, 61, 109, 104, 98, 123, 83, 101, 97, 124, Byte.MAX_VALUE, 83, Byte.MAX_VALUE, 105, 111, 99, 98, 104, 83, 111, 100, 109, 98, 98, 105, 96, 83, 105, 98, 109, 110, 96, 105, 104, 10, 15, 5, 28, 52, 2, 5, 31, 52, 2, 6, 10, 12, 14, 52, 10, 24, 52, 8, 31, 10, 52, 14, 5, 10, 9, 7, 14, 15, 100, 97, 107, 114, 90, 108, 107, 113, 90, 119, 115, 90, 108, 107, 118, 113, 100, 105, 105, 90, 108, 107, 115, 100, 105, 108, 97, 100, 113, 108, 106, 107, 118, 0, 5, 15, 22, 62, 8, 15, 21, 62, 19, 23, 62, 23, 8, 5, 4, 14, 62, 0, 18, 62, 2, 21, 0, 62, 4, 15, 0, 3, 13, 4, 5, 23, 18, 24, 1, 41, 31, 24, 2, 19, 4, 5, 2, 31, 2, 31, 23, 26, 41, 24, 19, 1, 41, 31, 27, 23, 17, 19, 41, 18, 19, 5, 31, 17, 24, 52, 49, 59, 34, 10, 57, 58, 50, 10, 54, 38, 10, 54, 56, 37, 81, 84, 94, 71, 111, 92, 95, 87, 87, 89, 94, 87, 111, 85, 94, 84, SignedBytes.MAX_POWER_OF_TWO, 95, 89, 94, 68, 111, SignedBytes.MAX_POWER_OF_TWO, 66, 85, 86, 89, 72, 115, 118, 124, 101, 77, 124, 115, 102, 123, 100, 119, 77, 113, 115, 96, 125, 103, 97, 119, 126, 77, 113, 125, Byte.MAX_VALUE, 98, 115, 113, 102, 77, 102, 122, 96, 119, 97, 122, 125, 126, 118, 61, 56, 50, 43, 3, 50, 61, 40, 53, 42, 57, 3, 42, 53, 56, 57, 51, 3, 48, 51, 51, 44, 53, 50, 59, 3, 57, 50, 61, 62, 48, 57, 56, 71, 66, 72, 81, 121, 72, 71, 82, 79, 80, 67, 121, 80, 79, 67, 81, 121, 85, 72, 71, 86, 85, 78, 73, 82, 121, 74, 73, 65, 65, 79, 72, 65, 121, 67, 72, 71, 68, 74, 67, 66, 99, 102, 108, 117, 93, 109, 108, 102, 103, 116, 107, 97, 103, 93, 106, 107, 113, 118, 109, 112, 123, 93, 102, 99, 118, 99, 93, 103, 108, 99, 96, 110, 103, 102, 58, 63, 53, 44, 4, 52, 43, 62, 53, 4, 61, 57, 4, 58, 43, 43, 4, 58, 55, 44, 58, 34, 40, 121, 124, 118, 111, 71, 104, 116, 121, 97, 121, 122, 116, 125, 71, 123, 116, 113, 123, 115, 71, 117, 121, 96, 71, 124, 125, 116, 121, 97, 71, 117, 107, 34, 39, 45, 52, 28, 51, 47, 34, 58, 34, 33, 47, 38, 28, 39, 42, 48, 34, 33, 47, 38, 28, 49, 38, 46, 44, 55, 38, 28, 44, 45, 28, 45, 38, 55, 52, 44, 49, 40, 28, 47, 44, 48, 48, 25, 28, 22, 15, 39, 8, 20, 25, 1, 25, 26, 20, 29, 11, 39, 20, 23, 31, 31, 17, 22, 31, 39, 29, 22, 25, 26, 20, 29, 28, 94, 91, 81, 72, 96, 79, 83, 94, 70, 94, 93, 83, 90, 76, 96, 81, 90, 72, 96, 91, 90, 76, 86, 88, 81, 44, 41, 35, 58, 18, 61, 33, 44, 52, 44, 47, 33, 40, 62, 18, 62, 37, 34, 58, 18, 40, 35, 41, 46, 44, 63, 41, 32, 37, 47, 54, 30, 49, 51, 36, 45, 46, 32, 37, 30, 40, 47, 53, 36, 51, 50, 53, 40, 53, 40, 32, 45, 30, 37, 56, 47, 32, 44, 40, 34, 30, 54, 36, 35, 55, 40, 36, 54, 125, 120, 114, 107, 67, 108, 110, 121, 112, 115, 125, 120, 67, 114, 125, 104, 117, 106, 121, 67, 120, 101, 114, 125, 113, 117, Byte.MAX_VALUE, 67, 107, 121, 126, 106, 117, 121, 107, 68, 65, 75, 82, 122, 85, 87, SignedBytes.MAX_POWER_OF_TWO, 73, 74, 68, 65, 122, 87, 83, 122, 65, 92, 75, 68, 72, 76, 70, 122, 82, SignedBytes.MAX_POWER_OF_TWO, 71, 83, 76, SignedBytes.MAX_POWER_OF_TWO, 82, 34, 39, 45, 52, 28, 51, 49, 38, 53, 38, 45, 55, 28, 51, 47, 34, 58, 34, 33, 47, 38, 28, 34, 54, 55, 44, 28, 32, 47, 42, 32, 40, 10, 15, 5, 28, 52, 27, 30, 25, 12, 14, 52, 4, 5, 52, 95, 90, 88, 52, 25, 14, 24, 27, 4, 5, 24, 14, 46, 43, 33, 56, 16, 61, 42, 44, 32, 34, 63, 58, 59, 42, 16, 45, 59, 16, 46, 41, 59, 42, 61, 16, 42, 55, 59, 61, 46, 60, 16, 44, 39, 46, 33, 40, 42, 1, 4, 14, 23, 63, 18, 22, 63, 2, 21, 6, 6, 5, 18, 63, 3, 8, 5, 3, 11, 63, 5, 14, 1, 2, 12, 5, 4, 52, 49, 59, 34, 10, 39, 35, 10, 37, 57, 52, 44, 55, 52, 54, 62, 10, 54, 39, 52, 38, 61, 10, 51, 52, 57, 57, 55, 52, 54, 62, 76, 73, 67, 90, 114, 94, 72, 67, 73, 68, 67, 74, 114, 75, 95, 72, 92, 88, 72, 67, 78, 84, 114, 78, 76, 93, 93, 68, 67, 74, 114, 76, 65, 65, 66, 90, 72, 73, 12, 9, 3, 26, 50, 30, 8, 25, 50, 25, 8, 21, 25, 50, 14, 2, 1, 2, 31, 50, 9, 20, 3, 12, 0, 4, 14, 12, 1, 1, 20, 79, 74, SignedBytes.MAX_POWER_OF_TWO, 89, 113, 93, 70, 65, 91, 66, 74, 113, 79, 74, 74, 113, 75, 86, 90, 75, SignedBytes.MAX_POWER_OF_TWO, 93, 71, 65, SignedBytes.MAX_POWER_OF_TWO, 113, 90, 65, 113, 94, 66, 79, 87, 79, 76, 66, 75, 93, 55, 50, 56, 33, 9, 37, 62, 57, 35, 58, 50, 9, 53, 58, 51, 55, 36, 9, 48, 51, 55, 34, 35, 36, 51, 9, 53, 57, 56, 48, 63, 49, 9, 57, 56, 9, 53, 36, 55, 37, 62, 51, 37, 126, 123, 113, 104, SignedBytes.MAX_POWER_OF_TWO, 108, 119, 112, 106, 115, 123, SignedBytes.MAX_POWER_OF_TWO, 118, 120, 113, 112, 109, 122, SignedBytes.MAX_POWER_OF_TWO, 123, 122, 108, 107, 109, 112, 102, SignedBytes.MAX_POWER_OF_TWO, 124, 126, 115, 115, 3, 6, 12, 21, 61, 17, 10, 13, 23, 
        14, 6, 61, 11, 12, 1, 16, 7, 15, 7, 12, 22, 61, 16, 7, 22, 16, 27, 61, 1, 13, 23, 12, 22, 7, 16, 61, 13, 12, 61, 7, 15, 18, 22, 27, 61, 16, 7, 17, 18, 13, 12, 17, 7, 121, 124, 118, 111, 71, 107, 112, 119, 109, 116, 124, 71, 113, 118, 113, 108, 71, 126, 106, 119, 117, 71, 123, 119, 118, 108, 125, 118, 108, 71, 104, 106, 119, 110, 113, 124, 125, 106, 33, 36, 46, 55, 31, 51, 40, 47, 53, 44, 36, 31, 41, 46, 41, 52, 31, 47, 46, 31, 35, 44, 33, 51, 51, 31, 44, 47, 33, 36, 41, 46, 39, 104, 109, 103, 126, 86, 122, 97, 102, 124, 101, 109, 86, 101, 102, 110, 86, 104, 122, 122, 108, 125, 86, 124, 123, 101, 7, 2, 8, 17, 57, 21, 14, 9, 19, 10, 2, 57, 22, 20, 3, 5, 9, 11, 22, 19, 18, 3, 57, 4, 15, 2, 2, 3, 20, 57, 18, 9, 13, 3, 8, 98, 103, 109, 116, 92, 112, 104, 106, 115, 92, 117, 106, 103, 102, 108, 92, 109, 108, 109, 92, 107, 98, 113, 103, 116, 98, 113, 102, 92, 98, 96, 96, 102, 111, 102, 113, 98, 119, 102, 103, 123, 126, 116, 109, 69, 105, 110, 123, 121, 113, 110, 104, 123, 121, Byte.MAX_VALUE, 69, 125, 104, 117, 111, 106, 115, 116, 125, 69, Byte.MAX_VALUE, 116, 123, 120, 118, Byte.MAX_VALUE, 126, 35, 38, 44, 53, 29, 49, 59, 44, 33, 29, 35, 36, 54, 39, 48, 29, 35, 38, 29, 46, 45, 35, 38, 96, 101, 111, 118, 94, 114, 120, 111, 98, 94, 100, 111, 101, 113, 110, 104, 111, 117, 94, 113, 115, 100, 103, 104, 121, 106, 111, 101, 124, 84, Byte.MAX_VALUE, 98, 102, 110, 84, Byte.MAX_VALUE, 100, 84, 124, 106, 98, Byte.MAX_VALUE, 84, 109, 100, 121, 84, 125, 98, 111, 110, 100, 84, 123, 103, 106, 114, 84, 102, 120, 69, SignedBytes.MAX_POWER_OF_TWO, 74, 83, 123, 80, 77, 73, 65, 123, 80, 75, 123, 83, 69, 77, 80, 123, 66, 75, 86, 123, 82, 77, SignedBytes.MAX_POWER_OF_TWO, 65, 75, 123, 84, 86, 65, 84, 69, 86, 65, SignedBytes.MAX_POWER_OF_TWO, 123, 73, 87, 83, 86, 92, 69, 109, 70, 91, 95, 87, 93, 71, 70, 109, SignedBytes.MAX_POWER_OF_TWO, 87, 69, 83, SignedBytes.MAX_POWER_OF_TWO, 86, 87, 86, 109, 68, 91, 86, 87, 93, 115, 118, 124, 101, 77, 102, 96, 123, 117, 117, 119, 96, 77, 124, 115, 102, 123, 100, 119, 77, 96, 119, 117, 123, 97, 102, 119, 96, 77, 100, 123, 119, 101, 77, 119, 96, 96, 125, 96, 77, 113, 115, 126, 126, 112, 115, 113, 121, 125, 120, 114, 107, 67, 105, 114, 117, 109, 105, 121, 67, 120, 126, 67, 114, 125, 113, 121, 67, 108, 121, 110, 67, 108, 110, 115, Byte.MAX_VALUE, 121, 111, 111, 54, 51, 57, 32, 8, 34, 39, 51, 54, 35, 50, 8, 50, 47, 35, 37, 54, 8, 63, 62, 57, 35, 36, 8, 49, 56, 37, 8, 52, 63, 54, 62, 57, 62, 57, 48, 72, 77, 71, 94, 118, 92, 90, 76, 118, 72, 89, 89, 118, 77, SignedBytes.MAX_POWER_OF_TWO, 78, 76, 90, 93, 118, 72, 89, SignedBytes.MAX_POWER_OF_TWO, 50, 55, 61, 36, 12, 38, 32, 54, 12, 48, 50, 48, 59, 54, 55, 12, 54, 43, 54, 48, 38, 39, 60, 33, 12, 53, 60, 33, 12, 61, 54, 39, 36, 60, 33, 56, 53, 48, 58, 35, 11, 33, 39, 49, 11, 55, 53, 55, 60, 49, 48, 11, 49, 44, 49, 55, 33, 32, 59, 38, 11, 61, 58, 11, 55, 53, 55, 60, 49, 11, 57, 53, 58, 53, 51, 49, 38, 113, 116, 126, 103, 79, 101, 99, 117, 79, 98, 121, 96, 96, 124, 117, 79, 113, 126, 121, 125, 113, 100, 121, Byte.MAX_VALUE, 126, 30, 27, 17, 8, 32, 10, 12, 26, 32, 12, 26, 28, 10, 13, 26, 32, 10, 13, 22, 32, 15, 30, 13, 12, 26, 13, 34, 39, 45, 52, 28, 53, 42, 39, 38, 44, 28, 48, 38, 32, 44, 45, 39, 28, 32, 43, 34, 45, 45, 38, 47, 28, 38, 45, 34, 33, 47, 38, 39, 31, 11, 10, 17, 12, 17, 10, 31, 10, 27, 33, 26, 23, 13, 31, 28, 18, 27, 26, 25, 13, 12, 23, 10, 23, 12, 25, 12, 29, 39, 29, 22, 25, 26, 20, 29, 28, 73, 70, 67, 73, 65, 77, 95, 75, 88, 78, 117, 94, 67, 71, 79, 117, 71, 89, 107, 103, 101, 38, 110, 105, 107, 109, 106, 103, 103, 99, 38, 105, 108, 123, 38, 78, 77, 73, 92, 93, 90, 77, 87, 75, 71, 70, 78, 65, 79, 38, 34, 37, 34, 38, 62, 38, 20, 46, 39, 42, 59, 56, 46, 47, 20, 63, 34, 38, 46, 20, 42, 45, 63, 46, 57, 20, 34, 38, 59, 57, 46, 56, 56, 34, 36, 37, 114, 105, 112, 112, 24, 15, 25, 30, 24, 3, 9, 30, 15, 14, 53, 14, 11, 30, 11, 53, 26, 24, 5, 9, 15, 25, 25, 3, 4, 13, 53, 9, 5, 7, 8, 3, 4, 11, 30, 3, 5, 4, 25, 112, 119, 98, 96, 104, 92, 119, 113, 98, 96, 102, 92, 112, 98, 110, 115, 111, 102, 92, 113, 98, 119, 102, 75, 84, 89, 88, 82, 98, 92, 83, 89, 98, 88, 83, 89, 94, 92, 79, 89, 98, 92, 72, 73, 82, 79, 82, 73, 92, 73, 88, 66, 66, 66};
    }

    static {
        A0b();
        A04 = new String[0];
        A05 = new String[]{A0Q(86, 5, 14), A0Q(65, 9, 115), A0Q(74, 12, 88)};
    }

    public IK(Context context) {
        this.A00 = context.getApplicationContext().getSharedPreferences(ProcessUtils.getProcessSpecificName(A0Q(4750, 31, 38), context), 0);
    }

    public static float A00(Context context) {
        return A0P(context).A01(A0Q(2486, 39, 117), 0.98f);
    }

    private final float A01(String str, float f2) {
        String string = this.A00.getString(str, String.valueOf(f2));
        if (string != null) {
            try {
                String value = A0Q(4818, 4, 50);
                if (string.equals(value)) {
                    return f2;
                }
                f2 = Float.parseFloat(string);
                return f2;
            } catch (NumberFormatException unused) {
                return f2;
            }
        }
        return f2;
    }

    public static int A02(Context context) {
        return A0P(context).A2I(A0Q(TTAdConstant.DOWNLOAD_URL_AND_PACKAGE_NAME, 33, 88), 100);
    }

    public static int A03(Context context) {
        return A0P(context).A2I(A0Q(2346, 33, 13), 0);
    }

    public static int A04(Context context) {
        return A0P(context).A2I(A0Q(2459, 27, 24), -1);
    }

    public static int A05(Context context) {
        return A0P(context).A2I(A0Q(799, 37, 83), 3);
    }

    public static int A06(Context context) {
        return A0P(context).A2I(A0Q(4732, 18, 4), 0);
    }

    public static int A07(Context context) {
        return A0P(context).A2I(A0Q(545, 36, 97), 3000);
    }

    public static int A08(Context context) {
        return A0P(context).A2I(A0Q(1498, 50, 51), 30000);
    }

    public static int A09(Context context) {
        return A0P(context).A2I(A0Q(1592, 40, 25), 3);
    }

    public static int A0A(Context context) {
        return A0P(context).A2I(A0Q(1548, 44, 119), 8000);
    }

    public static int A0B(Context context) {
        return A0P(context).A2I(A0Q(1632, 48, 20), 100);
    }

    public static int A0C(Context context) {
        return A0P(context).A2I(A0Q(1680, 39, 123), 60000);
    }

    public static int A0D(Context context) {
        return A0P(context).A2I(A0Q(3222, 38, 60), 225);
    }

    public static int A0E(Context context) {
        return A0P(context).A2I(A0Q(1267, 41, 90), 3145728);
    }

    public static int A0F(Context context) {
        return A0P(context).A2I(A0Q(4781, 37, 101), -1);
    }

    public static int A0G(Context context) {
        return A0P(context).A2I(A0Q(3391, 32, 54), 2000);
    }

    public static int A0H(Context context) {
        return A0P(context).A2I(A0Q(371, 46, 43), -1);
    }

    public static int A0I(Context context) {
        return A0P(context).A2I(A0Q(4861, 23, 45), 0);
    }

    public static int A0J(Context context) {
        return A0P(context).A2I(A0Q(4295, 35, 37), 3000);
    }

    public static int A0K(Context context) {
        return A0P(context).A2I(A0Q(4330, 39, 10), 3000);
    }

    public static int A0L(Context context) {
        return A0P(context).A2I(A0Q(1413, 46, 54), 0);
    }

    public static long A0M(Context context) {
        return A0P(context).A2J(A0Q(765, 34, 60), 67108864L);
    }

    public static long A0N(Context context) {
        return A0P(context).A2J(A0Q(920, 45, 8), 1048576L);
    }

    public static long A0O(Context context) {
        return A0P(context).A2J(A0Q(1073, 38, 31), 33554432L);
    }

    public static synchronized IK A0P(Context context) {
        IK ik;
        synchronized (IK.class) {
            if (A01 == null) {
                A01 = new IK(context);
            }
            ik = A01;
        }
        return ik;
    }

    public static String A0R(Context context) {
        return A0P(context).A2K(A0Q(3194, 28, 30), A0Q(4912, 3, 27));
    }

    public static String A0S(Context context) {
        return A0P(context).A2K(A0Q(4270, 25, 47), A0Q(4912, 3, 27));
    }

    public static String A0T(Context context) {
        return A0P(context).A2K(A0Q(117, 52, 109), A0Q(1, 6, 36));
    }

    public static String A0U(Context context) {
        return A0P(context).A2K(A0Q(268, 51, 11), A0Q(24, 41, 29));
    }

    public static String A0V(Context context) {
        return A0P(context).A2K(A0Q(169, 53, 86), A0Q(7, 8, 63));
    }

    public static String A0W(Context context) {
        return A0P(context).A2K(A0Q(319, 52, 81), A0Q(15, 9, 110));
    }

    public static Set<String> A0X(Context context) {
        return A0P(context).A0a(A0Q(624, 44, 63), A04);
    }

    public static Set<String> A0Y(Context context) {
        return A0P(context).A0a(A0Q(4822, 39, 68), A05);
    }

    public static Set<String> A0Z(Context context) {
        return A0P(context).A0a(A0Q(2230, 44, 124), A04);
    }

    private Set<String> A0a(String str, String[] strArr) {
        JSONArray jSONArray;
        String jsonArrayString = A2K(str, null);
        try {
            if (jsonArrayString != null) {
                jSONArray = new JSONArray(jsonArrayString);
            } else {
                jSONArray = new JSONArray((Collection) Arrays.asList(strArr));
            }
            int length = jSONArray.length();
            LinkedHashSet linkedHashSet = new LinkedHashSet(length);
            for (int i = 0; i < length; i++) {
                linkedHashSet.add(jSONArray.getString(i));
            }
            return linkedHashSet;
        } catch (JSONException unused) {
            return new LinkedHashSet();
        }
    }

    @SuppressLint({"ApplySharedPref"})
    public static void A0c(Context context) {
        A0P(context).A00.edit().clear().commit();
    }

    private void A0d(@Nullable String str, @Nullable String str2) throws JSONException {
        if (str == null || str.isEmpty() || str.equals(A0Q(91, 2, 121))) {
            return;
        }
        JSONObject json = new JSONObject(str);
        A0e(json, str2);
    }

    private void A0e(JSONObject jSONObject, @Nullable String str) throws JSONException {
        SharedPreferences.Editor edit = this.A00.edit();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (next.equals(A0Q(93, 24, 54))) {
                A0d(jSONObject.getString(next), next);
            } else {
                String str2 = next;
                if (str != null) {
                    str2 = str + A0Q(0, 1, 108) + str2;
                }
                edit.putString(str2, jSONObject.getString(next));
            }
        }
        edit.apply();
    }

    public static boolean A0f(Context context) {
        return A0P(context).A2K(A0Q(4884, 28, 19), A0Q(4695, 19, 80)).equals(A0Q(4714, 18, 86));
    }

    public static boolean A0g(Context context) {
        return A0P(context).A2N(A0Q(475, 38, 54), false);
    }

    public static boolean A0h(Context context) {
        return A0P(context).A2N(A0Q(3714, 37, 97), false);
    }

    public static boolean A0i(Context context) {
        return A0P(context).A2N(A0Q(581, 43, 113), true);
    }

    public static boolean A0j(Context context) {
        return A0P(context).A2N(A0Q(2593, 29, 14), true);
    }

    public static boolean A0k(Context context) {
        return A0P(context).A2N(A0Q(3522, 27, 99), false);
    }

    public static boolean A0l(Context context) {
        return A0P(context).A2N(A0Q(876, 44, 46), true);
    }

    public static boolean A0m(Context context) {
        return A0P(context).A2N(A0Q(2434, 25, 22), true);
    }

    public static boolean A0n(Context context) {
        return A0P(context).A2N(A0Q(3423, 44, 109), true);
    }

    public static boolean A0o(Context context) {
        return A0P(context).A2N(A0Q(1003, 37, 50), true);
    }

    public static boolean A0p(Context context) {
        return A0P(context).A2N(A0Q(2563, 30, 69), false);
    }

    public static boolean A0q(Context context) {
        return A0P(context).A2N(A0Q(3080, 33, 43), false);
    }

    public static boolean A0r(Context context) {
        return A0P(context).A2N(A0Q(IronSourceError.ERROR_RV_INIT_EXCEPTION, 33, 120), true);
    }

    public static boolean A0s(Context context) {
        return A0P(context).A2N(A0Q(2897, 28, 54), false);
    }

    public static boolean A0t(Context context) {
        return A0P(context).A2N(A0Q(IronSourceConstants.RV_CALLBACK_AVAILABILITY_TRUE, 40, 67), true);
    }

    public static boolean A0u(Context context) {
        return A0P(context).A2N(A0Q(1151, 35, 55), false);
    }

    public static boolean A0v(Context context) {
        return A0P(context).A2N(A0Q(2733, 18, 84), false);
    }

    public static boolean A0w(Context context) {
        return A0P(context).A2N(A0Q(2984, 35, 119), true);
    }

    public static boolean A0x(Context context) {
        return A0P(context).A2N(A0Q(InputDeviceCompat.SOURCE_DPAD, 32, 80), false);
    }

    public static boolean A0y(Context context) {
        return A0P(context).A2N(A0Q(450, 25, 112), false);
    }

    public static boolean A0z(Context context) {
        return A0P(context).A2N(A0Q(2925, 25, 52), false);
    }

    public static boolean A10(Context context) {
        if (Build.VERSION.SDK_INT >= 18) {
            IK A0P = A0P(context);
            String A0Q = A0Q(2622, 25, 17);
            if (A03[5].charAt(10) != 'g') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[3] = "eVi9wsoxiKuO8fS3Ni664QsxmOwf4Hz";
            strArr[0] = "nOcXZ0DMfofG3U9htYbEeRQSfAelmGW";
            return A0P.A2N(A0Q, false);
        }
        return false;
    }

    public static boolean A11(Context context) {
        return A0P(context).A2N(A0Q(2873, 24, 58), false);
    }

    public static boolean A12(Context context) {
        return A0P(context).A2N(A0Q(3334, 34, 44), false);
    }

    public static boolean A13(Context context) {
        return A0P(context).A2N(A0Q(3051, 29, 69), false);
    }

    public static boolean A14(Context context) {
        return A0P(context).A2N(A0Q(IronSourceConstants.BN_CALLBACK_PRESENT_SCREEN, 32, 79), false);
    }

    public static boolean A15(Context context) {
        return A0P(context).A2N(A0Q(1339, 23, 100), false);
    }

    public static boolean A16(Context context) {
        return A0P(context).A2N(A0Q(3293, 41, 8), false);
    }

    public static boolean A17(Context context) {
        return A0P(context).A2N(A0Q(2835, 22, 64), false);
    }

    public static boolean A18(Context context) {
        return A0P(context).A2N(A0Q(3751, 28, 78), true);
    }

    public static boolean A19(Context context) {
        return A0P(context).A2N(A0Q(3779, 31, 123), true);
    }

    public static boolean A1A(Context context) {
        return A0P(context).A2N(A0Q(4215, 32, 52), false);
    }

    public static boolean A1B(Context context) {
        return A0P(context).A2N(A0Q(222, 46, 76), false);
    }

    public static boolean A1C(Context context) {
        return A0P(context).A2N(A0Q(3260, 33, 114), false);
    }

    public static boolean A1D(Context context) {
        return A0P(context).A2N(A0Q(3179, 15, 123), false);
    }

    public static boolean A1E(Context context) {
        return A0P(context).A2N(A0Q(2525, 38, 96), false);
    }

    public static boolean A1F(Context context) {
        return A0P(context).A2N(A0Q(2797, 19, 0), true);
    }

    public static boolean A1G(Context context) {
        return A0P(context).A2N(A0Q(IronSourceConstants.IS_AUCTION_SUCCESS, 45, 85), false);
    }

    public static boolean A1H(Context context) {
        return A0P(context).A2N(A0Q(1719, 25, 65), true);
    }

    public static boolean A1I(Context context) {
        return A0P(context).A2N(A0Q(3549, 41, 111), true);
    }

    public static boolean A1J(Context context) {
        return A0P(context).A2N(A0Q(2816, 19, 47), true);
    }

    public static boolean A1K(Context context) {
        return A0P(context).A2N(A0Q(3590, 35, 50), true);
    }

    public static boolean A1L(Context context) {
        return A0P(context).A2N(A0Q(3625, 31, 11), true);
    }

    public static boolean A1M(Context context) {
        return A0P(context).A2N(A0Q(3656, 32, 109), true);
    }

    public static boolean A1N(Context context) {
        return A0P(context).A2N(A0Q(1744, 45, 34), true);
    }

    public static boolean A1O(Context context) {
        return A0P(context).A2N(A0Q(1789, 57, 117), false);
    }

    public static boolean A1P(Context context) {
        return A0P(context).A2N(A0Q(1846, 59, 108), true);
    }

    public static boolean A1Q(Context context) {
        return A0P(context).A2N(A0Q(3019, 32, 34), false);
    }

    public static boolean A1R(Context context) {
        return A0P(context).A2N(A0Q(4662, 33, 109), false);
    }

    public static boolean A1S(Context context) {
        return A0P(context).A2N(A0Q(3810, 38, 3), true);
    }

    public static boolean A1T(Context context) {
        return A0P(context).A2N(A0Q(3879, 38, 0), true);
    }

    public static boolean A1U(Context context) {
        return A0P(context).A2N(A0Q(3368, 23, 117), true);
    }

    public static boolean A1V(Context context) {
        return A0P(context).A2N(A0Q(2379, 21, 123), false);
    }

    public static boolean A1W(Context context) {
        return A0P(context).A2N(A0Q(1905, 44, 20), true);
    }

    public static boolean A1X(Context context) {
        return Build.VERSION.SDK_INT >= 16 && A0P(context).A2N(A0Q(668, 46, 110), false);
    }

    public static boolean A1Y(Context context) {
        return A0P(context).A2N(A0Q(714, 51, 74), true);
    }

    public static boolean A1Z(Context context) {
        return A0P(context).A2N(A0Q(3917, 43, 120), true);
    }

    public static boolean A1a(Context context) {
        return A0P(context).A2N(A0Q(965, 38, 49), false);
    }

    public static boolean A1b(Context context) {
        return A0P(context).A2N(A0Q(3467, 30, 86), true);
    }

    public static boolean A1c(Context context) {
        return A0P(context).A2N(A0Q(2274, 27, 108), false);
    }

    public static boolean A1d(Context context) {
        return A0P(context).A2N(A0Q(1362, 51, 8), false);
    }

    public static boolean A1e(Context context) {
        return A0P(context).A2N(A0Q(1186, 40, 37), true);
    }

    public static boolean A1f(Context context) {
        return A0P(context).A2N(A0Q(1949, 31, 98), false);
    }

    public static boolean A1g(Context context) {
        return A0P(context).A2N(A0Q(1226, 41, 69), false);
    }

    public static boolean A1h(Context context) {
        return A0P(context).A2N(A0Q(3960, 31, 49), false);
    }

    public static boolean A1i(Context context) {
        return A0P(context).A2N(A0Q(3991, 53, 76), false);
    }

    public static boolean A1j(Context context) {
        return A0P(context).A2N(A0Q(4044, 38, 54), true);
    }

    public static boolean A1k(Context context) {
        return A0P(context).A2N(A0Q(4082, 33, 110), false);
    }

    public static boolean A1l(Context context) {
        return A0P(context).A2N(A0Q(1980, 53, 72), false);
    }

    public static boolean A1m(Context context) {
        return A0P(context).A2N(A0Q(2950, 34, 100), false);
    }

    public static boolean A1n(Context context) {
        return A0P(context).A2N(A0Q(2033, 48, 102), false);
    }

    public static boolean A1o(Context context) {
        return A0P(context).A2N(A0Q(4115, 25, 39), false);
    }

    public static boolean A1p(Context context) {
        return A0P(context).A2N(A0Q(IronSourceConstants.IS_CAP_PLACEMENT, 34, 106), false);
    }

    public static boolean A1q(Context context) {
        return A0P(context).A2N(A0Q(4140, 35, 72), false);
    }

    public static boolean A1r(Context context) {
        return A0P(context).A2N(A0Q(3688, 26, 69), false);
    }

    public static boolean A1s(Context context) {
        return A0P(context).A2N(A0Q(2081, 51, 61), true);
    }

    public static boolean A1t(Context context) {
        return A0P(context).A2N(A0Q(3848, 31, 67), false);
    }

    public static boolean A1u(Context context) {
        return A0P(context).A2N(A0Q(1308, 31, 37), false);
    }

    public static boolean A1v(Context context) {
        return A0P(context).A2N(A0Q(4247, 23, 108), true);
    }

    public static boolean A1w(Context context) {
        return A0P(context).A2N(A0Q(4369, 27, 28), false);
    }

    public static boolean A1x(Context context) {
        return A0P(context).A2N(A0Q(4475, 36, 121), false);
    }

    public static boolean A1y(Context context) {
        return A0P(context).A2N(A0Q(2751, 46, 43), true);
    }

    public static boolean A1z(Context context) {
        return A0P(context).A2N(A0Q(3145, 34, 88), false);
    }

    public static boolean A20(Context context) {
        return A0P(context).A2N(A0Q(4611, 25, 62), false);
    }

    public static boolean A21(Context context) {
        return A0P(context).A2N(A0Q(4444, 31, 50), false);
    }

    public static boolean A22(Context context) {
        return A0P(context).A2N(A0Q(4175, 40, 45), true);
    }

    public static boolean A23(Context context) {
        return A0P(context).A2N(A0Q(2857, 16, 91), true);
    }

    public static boolean A24(Context context) {
        return A0P(context).A2N(A0Q(4396, 48, 60), false);
    }

    public static boolean A25(Context context) {
        return A0P(context).A2N(A0Q(4511, 23, 7), true);
    }

    public static boolean A26(Context context) {
        return A0P(context).A2N(A0Q(2132, 18, 53), false);
    }

    public static boolean A27(Context context) {
        return A0P(context).A2N(A0Q(2150, 40, 90), false);
    }

    public static boolean A28(Context context) {
        return A0P(context).A2N(A0Q(4534, 36, 125), false);
    }

    public static boolean A29(Context context) {
        return A0P(context).A2N(A0Q(4570, 41, 122), true);
    }

    public static boolean A2A(Context context) {
        return A0P(context).A2N(A0Q(836, 40, 10), false);
    }

    public static boolean A2B(Context context) {
        return A0P(context).A2N(A0Q(1459, 39, 40), false);
    }

    public static boolean A2C(Context context) {
        return A0P(context).A2N(A0Q(3497, 25, 17), false);
    }

    public static boolean A2D(Context context) {
        return A0P(context).A2N(A0Q(4636, 26, 81), true);
    }

    public static boolean A2E(Context context) {
        return A0P(context).A2N(A0Q(2190, 40, 20), true);
    }

    public static boolean A2F(Context context, boolean z) {
        return A2H(context, z) && A0P(context).A2N(A0Q(2647, 27, 87), false);
    }

    public static boolean A2G(Context context, boolean z) {
        return Build.VERSION.SDK_INT >= 21 && A2F(context, z) && A0P(context).A2N(A0Q(2674, 35, 66), true);
    }

    public static boolean A2H(Context context, boolean z) {
        return z && Build.VERSION.SDK_INT >= 19 && A0P(context).A2N(A0Q(2709, 24, 2), false);
    }

    public final int A2I(String str, int i) {
        String string = this.A00.getString(str, String.valueOf(i));
        if (string != null) {
            try {
                String value = A0Q(4818, 4, 50);
                if (string.equals(value)) {
                    return i;
                }
                i = Integer.parseInt(string);
                return i;
            } catch (NumberFormatException unused) {
                return i;
            }
        }
        return i;
    }

    public final long A2J(String str, long j) {
        String string = this.A00.getString(str, String.valueOf(j));
        if (string != null) {
            try {
                String value = A0Q(4818, 4, 50);
                if (string.equals(value)) {
                    return j;
                }
                j = Long.parseLong(string);
                return j;
            } catch (NumberFormatException unused) {
                return j;
            }
        }
        return j;
    }

    public final String A2K(String str, String str2) {
        String string = this.A00.getString(str, str2);
        if (string != null) {
            String value = A0Q(4818, 4, 50);
            return string.equals(value) ? str2 : string;
        }
        return str2;
    }

    public final void A2L(@Nullable String str) throws JSONException {
        A0d(str, null);
    }

    public final void A2M(@Nullable JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return;
        }
        A0e(jSONObject, null);
    }

    public final boolean A2N(String str, boolean z) {
        String string = this.A00.getString(str, String.valueOf(z));
        if (string != null) {
            String value = A0Q(4818, 4, 50);
            boolean equals = string.equals(value);
            if (A03[5].charAt(10) != 'g') {
                throw new RuntimeException();
            }
            A03[7] = "2ZyfpebDvRtNljKwQKDVcWpHPVLB6mST";
            return equals ? z : Boolean.parseBoolean(string);
        }
        return z;
    }
}

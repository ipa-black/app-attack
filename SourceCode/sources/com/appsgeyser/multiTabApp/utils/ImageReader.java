package com.appsgeyser.multiTabApp.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.util.Log;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
/* loaded from: classes2.dex */
public class ImageReader {
    public static Bitmap decodeFile(InputStream inputStream, int i) {
        if (i == 0) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i2 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        while ((options.outWidth / i2) / 2 >= i && (options.outHeight / i2) / 2 >= i) {
            i2 *= 2;
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inSampleSize = i2;
        try {
            inputStream.reset();
            return BitmapFactory.decodeStream(inputStream, null, options2);
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Bitmap decodeFile(String str, int i) {
        try {
            return decodeFile(new FileInputStream(str), i);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    public static Bitmap createBitmapFromBase64(String str) {
        if (str.equals("")) {
            return null;
        }
        byte[] decode = Base64.decode(str.replace("data:image/png;base64,", ""), 0);
        return BitmapFactory.decodeByteArray(decode, 0, decode.length);
    }

    public static Bitmap resizedBitmapFromUrl(String str, int i) {
        try {
            URL url = new URL(str);
            Log.d("ImageReader", "URL: " + str);
            URLConnection openConnection = url.openConnection();
            openConnection.setDoInput(true);
            openConnection.connect();
            InputStream inputStream = openConnection.getInputStream();
            if (i == 0) {
                return null;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
            int i2 = 1;
            while ((options.outWidth / i2) / 2 >= i && (options.outHeight / i2) / 2 >= i) {
                i2 *= 2;
            }
            return Bitmap.createScaledBitmap(decodeStream, decodeStream.getWidth() / i2, decodeStream.getHeight() / i2, true);
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Bitmap bitmapFromUrl(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}

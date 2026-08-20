package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.l.ai;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class l extends h {
    public static final Parcelable.Creator<l> CREATOR = new Parcelable.Creator<l>() { // from class: com.applovin.exoplayer2.g.e.l.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public l[] newArray(int i) {
            return new l[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f2910a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2911b;

    l(Parcel parcel) {
        super((String) ai.a(parcel.readString()));
        this.f2910a = parcel.readString();
        this.f2911b = (String) ai.a(parcel.readString());
    }

    public l(String str, String str2, String str3) {
        super(str);
        this.f2910a = str2;
        this.f2911b = str3;
    }

    private static List<Integer> a(String str) {
        int parseInt;
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                parseInt = Integer.parseInt(str.substring(8, 10));
            } else if (str.length() < 7) {
                if (str.length() >= 4) {
                    parseInt = Integer.parseInt(str.substring(0, 4));
                }
                return arrayList;
            } else {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                parseInt = Integer.parseInt(str.substring(5, 7));
            }
            arrayList.add(Integer.valueOf(parseInt));
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.applovin.exoplayer2.g.a.InterfaceC0042a
    public void a(ac.a aVar) {
        String str = this.f2899f;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c2 = 0;
                    break;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    c2 = 1;
                    break;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    c2 = 2;
                    break;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c2 = 3;
                    break;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c2 = 4;
                    break;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    c2 = 5;
                    break;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c2 = 6;
                    break;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c2 = 7;
                    break;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    c2 = 11;
                    break;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c2 = '\f';
                    break;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c2 = '\r';
                    break;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c2 = 14;
                    break;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c2 = 15;
                    break;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c2 = 16;
                    break;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c2 = 17;
                    break;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c2 = 18;
                    break;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c2 = 19;
                    break;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c2 = 20;
                    break;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c2 = 21;
                    break;
                }
                break;
        }
        try {
            switch (c2) {
                case 0:
                case '\n':
                    aVar.c(this.f2911b);
                    return;
                case 1:
                case 11:
                    aVar.i(this.f2911b);
                    return;
                case 2:
                case '\f':
                    aVar.e(Integer.valueOf(Integer.parseInt(this.f2911b.substring(2, 4)))).f(Integer.valueOf(Integer.parseInt(this.f2911b.substring(0, 2))));
                    return;
                case 3:
                case 17:
                    aVar.b(this.f2911b);
                    return;
                case 4:
                case 18:
                    aVar.d(this.f2911b);
                    return;
                case 5:
                case 19:
                    aVar.j(this.f2911b);
                    return;
                case 6:
                case 20:
                    String[] a2 = ai.a(this.f2911b, "/");
                    aVar.a(Integer.valueOf(Integer.parseInt(a2[0]))).b(a2.length > 1 ? Integer.valueOf(Integer.parseInt(a2[1])) : null);
                    return;
                case 7:
                case 16:
                    aVar.a(this.f2911b);
                    return;
                case '\b':
                case 15:
                    aVar.h(this.f2911b);
                    return;
                case '\t':
                case 21:
                    aVar.d(Integer.valueOf(Integer.parseInt(this.f2911b)));
                    return;
                case '\r':
                    List<Integer> a3 = a(this.f2911b);
                    int size = a3.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size != 3) {
                                return;
                            }
                            aVar.f(a3.get(2));
                        }
                        aVar.e(a3.get(1));
                    }
                    aVar.d(a3.get(0));
                    return;
                case 14:
                    List<Integer> a4 = a(this.f2911b);
                    int size2 = a4.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 != 3) {
                                return;
                            }
                            aVar.i(a4.get(2));
                        }
                        aVar.h(a4.get(1));
                    }
                    aVar.g(a4.get(0));
                    return;
                default:
                    return;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return ai.a((Object) this.f2899f, (Object) lVar.f2899f) && ai.a((Object) this.f2910a, (Object) lVar.f2910a) && ai.a((Object) this.f2911b, (Object) lVar.f2911b);
    }

    public int hashCode() {
        int hashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f2899f.hashCode()) * 31;
        String str = this.f2910a;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f2911b;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f2899f + ": description=" + this.f2910a + ": value=" + this.f2911b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2899f);
        parcel.writeString(this.f2910a);
        parcel.writeString(this.f2911b);
    }
}

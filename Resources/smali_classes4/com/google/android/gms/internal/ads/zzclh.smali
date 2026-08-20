.class final Lcom/google/android/gms/internal/ads/zzclh;
.super Lcom/google/android/gms/internal/ads/zzazz;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazv;)V
    .locals 1

    .line 1
    const-string v0, "Invalid content range: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzazz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazv;I)V

    return-void
.end method

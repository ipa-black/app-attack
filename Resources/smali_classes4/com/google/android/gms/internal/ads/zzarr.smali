.class public final Lcom/google/android/gms/internal/ads/zzarr;
.super Lcom/google/android/gms/internal/ads/zzarx;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zzi:Lcom/google/android/gms/internal/ads/zzaqr;

.field private zzj:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaml;IILcom/google/android/gms/internal/ads/zzaqr;)V
    .locals 7

    .line 1
    const-string v3, "lomf+VO0Ecj7WivSbw6aVWdgbo/lmDysFNgyXwY+gTY="

    const/16 v6, 0x35

    const-string v2, "yXY8/mGMSUXAD/doic4NhOcSiaIXIqWtQGozx2RibPkZkGDEn3zdgJKu8ncuIp2B"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzarx;-><init>(Lcom/google/android/gms/internal/ads/zzaqj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaml;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzarr;->zzi:Lcom/google/android/gms/internal/ads/zzaqr;

    if-eqz p7, :cond_0

    .line 2
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzaqr;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzarr;->zzj:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarr;->zzi:Lcom/google/android/gms/internal/ads/zzaqr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarr;->zze:Lcom/google/android/gms/internal/ads/zzaml;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarr;->zzf:Ljava/lang/reflect/Method;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzarr;->zzj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaml;->zzP(J)Lcom/google/android/gms/internal/ads/zzaml;

    :cond_0
    return-void
.end method

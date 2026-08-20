.class public final Lcom/google/android/gms/internal/ads/zzeti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzezl;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfjg;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjg;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the targeting must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeti;->zza:Lcom/google/android/gms/internal/ads/zzfjg;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeti;->zzb:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzf(Ljava/lang/Object;)V
    .locals 14

    .line 1
    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeti;->zza:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjg;->zzd:Lcom/google/android/gms/ads/internal/client/zzl;

    const-string v1, "http_timeout_millis"

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzw:I

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeti;->zza:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjg;->zzf:Ljava/lang/String;

    .line 3
    const-string v2, "slotname"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeti;->zza:Lcom/google/android/gms/internal/ads/zzfjg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfjg;->zzo:Lcom/google/android/gms/internal/ads/zzfit;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfit;->zza:I

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    const-string v2, "is_rewarded_interstitial"

    .line 5
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4
    :cond_1
    const-string v2, "is_new_rewarded"

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    :goto_0
    const-string v2, "start_signals_timestamp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzeti;->zzb:J

    .line 7
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzb:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 9
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzb:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    const-string v6, "cust_age"

    .line 8
    invoke-static {p1, v6, v2, v4}, Lcom/google/android/gms/internal/ads/zzfjr;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "extras"

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzc:Landroid/os/Bundle;

    .line 10
    invoke-static {p1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfjr;->zzb(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzd:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    const-string v7, "cust_gender"

    .line 11
    invoke-static {p1, v7, v2, v6}, Lcom/google/android/gms/internal/ads/zzfjr;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    const-string v2, "kw"

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zze:Ljava/util/List;

    .line 12
    invoke-static {p1, v2, v6}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzg:I

    if-eq v2, v4, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    const-string v7, "tag_for_child_directed_treatment"

    .line 13
    invoke-static {p1, v7, v2, v6}, Lcom/google/android/gms/internal/ads/zzfjr;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzf:Z

    if-eqz v2, :cond_5

    const-string v2, "test_request"

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zza:I

    if-lt v2, v1, :cond_6

    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzh:Z

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_4

    :cond_6
    move v2, v5

    :goto_4
    const-string v6, "d_imp_hdr"

    .line 15
    invoke-static {p1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzfjr;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzi:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zza:I

    if-lt v6, v1, :cond_7

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v5

    :goto_5
    const-string v6, "ppid"

    .line 17
    invoke-static {p1, v6, v2, v1}, Lcom/google/android/gms/internal/ads/zzfjr;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzk:Landroid/location/Location;

    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 19
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    .line 20
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 21
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    new-instance v1, Landroid/os/Bundle;

    .line 22
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v12

    .line 23
    const-string v12, "radius"

    invoke-virtual {v1, v12, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-wide v12, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v8, v12

    double-to-long v8, v8

    .line 24
    const-string v2, "lat"

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    mul-double/2addr v10, v12

    double-to-long v8, v10

    .line 25
    const-string v2, "long"

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 26
    const-string v2, "time"

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "uule"

    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    const-string v1, "url"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzl:Ljava/lang/String;

    .line 28
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjr;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "neighboring_content_urls"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzv:Ljava/util/List;

    .line 29
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "custom_targeting"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzn:Landroid/os/Bundle;

    .line 30
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjr;->zzb(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "category_exclusions"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzo:Ljava/util/List;

    .line 31
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "request_agent"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzp:Ljava/lang/String;

    .line 32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjr;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "request_pkg"

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzq:Ljava/lang/String;

    .line 33
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjr;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzr:Z

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zza:I

    const/4 v6, 0x7

    if-lt v2, v6, :cond_9

    move v2, v3

    goto :goto_6

    :cond_9
    move v2, v5

    :goto_6
    const-string v6, "is_designed_for_families"

    .line 34
    invoke-static {p1, v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjr;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zza:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_b

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzt:I

    if-eq v1, v4, :cond_a

    goto :goto_7

    :cond_a
    move v3, v5

    :goto_7
    const-string v2, "tag_for_under_age_of_consent"

    .line 35
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfjr;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    const-string v1, "max_ad_content_rating"

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzl;->zzu:Ljava/lang/String;

    .line 36
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfjr;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

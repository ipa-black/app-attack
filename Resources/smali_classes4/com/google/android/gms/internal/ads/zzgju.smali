.class public final Lcom/google/android/gms/internal/ads/zzgju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzguf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzguf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzguf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjt;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjr;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjr;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgju;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgju;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgju;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    .line 4
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjw;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzo(Lcom/google/android/gms/internal/ads/zzghj;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjz;-><init>()V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzo(Lcom/google/android/gms/internal/ads/zzghj;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghp;->zza()V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgji;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjr;

    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjr;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgjt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgjt;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzghm;->zzl(Lcom/google/android/gms/internal/ads/zzgme;Lcom/google/android/gms/internal/ads/zzgli;Z)V

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkp;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkp;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgkr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgkr;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzghm;->zzl(Lcom/google/android/gms/internal/ads/zzgme;Lcom/google/android/gms/internal/ads/zzgli;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

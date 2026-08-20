.class public final Lcom/google/android/gms/internal/ads/zzgoa;
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
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgno;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgno;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoa;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoa;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgoa;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoa;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 4
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgof;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgof;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzo(Lcom/google/android/gms/internal/ads/zzghj;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgno;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgno;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnz;->zza()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgji;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmx;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmx;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnh;->zza()V

    return-void
.end method

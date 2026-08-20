.class public final Lcom/google/android/gms/internal/ads/zzghp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final zza:Ljava/lang/String;

.field public static final zzb:Ljava/lang/String;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzguf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzguf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/ads/zzguf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghv;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghp;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgie;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgie;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghp;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgih;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgih;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgib;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgib;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgin;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgin;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgir;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgir;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgik;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgik;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgiu;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgiu;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzc()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghp;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghp;->zzd:Lcom/google/android/gms/internal/ads/zzguf;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghp;->zze:Lcom/google/android/gms/internal/ads/zzguf;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzghp;->zza()V
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

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghs;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzo(Lcom/google/android/gms/internal/ads/zzghj;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgoa;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghv;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghv;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgie;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgie;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgji;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgib;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgib;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgih;->zzg(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgik;

    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgik;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgin;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgin;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgir;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgir;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgiu;

    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgiu;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzghm;->zzn(Lcom/google/android/gms/internal/ads/zzgli;Z)V

    return-void
.end method

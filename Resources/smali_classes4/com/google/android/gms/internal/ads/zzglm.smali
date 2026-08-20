.class public final Lcom/google/android/gms/internal/ads/zzglm;
.super Lcom/google/android/gms/internal/ads/zzggf;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgmf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgmf;Lcom/google/android/gms/internal/ads/zzghn;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzghn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggf;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzglj;->zzb:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzb()Lcom/google/android/gms/internal/ads/zzgsv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgsv;->ordinal()I

    move-result v0

    aget p2, p2, v0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzglm;->zza:Lcom/google/android/gms/internal/ads/zzgmf;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzghb;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgll;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzglm;->zza:Lcom/google/android/gms/internal/ads/zzgmf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzc()Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgll;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzguc;Lcom/google/android/gms/internal/ads/zzglk;)V

    return-object v0
.end method

.class public final synthetic Lcom/google/android/gms/internal/ads/zzcoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbev;


# instance fields
.field public final synthetic zza:Z

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zza:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbgl;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zza:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzb:I

    sget v2, Lcom/google/android/gms/internal/ads/zzcoh;->zza:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbir;->zza()Lcom/google/android/gms/internal/ads/zzbiq;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbiq;->zzc()Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbiq;->zza(Z)Lcom/google/android/gms/internal/ads/zzbiq;

    .line 4
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbiq;->zzb(I)Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbir;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbgl;->zzj(Lcom/google/android/gms/internal/ads/zzbir;)Lcom/google/android/gms/internal/ads/zzbgl;

    return-void
.end method

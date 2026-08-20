.class final Lcom/google/android/gms/internal/ads/zzcrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfc;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcre;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrc;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrc;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcre;->zzE(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzcre;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqu;-><init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/internal/ads/zzcqt;)V

    return-object v0
.end method

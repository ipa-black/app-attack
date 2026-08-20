.class public final synthetic Lcom/google/android/gms/internal/ads/zzfpn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpo;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfow;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfpo;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpn;->zza:Lcom/google/android/gms/internal/ads/zzfpo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpn;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpn;->zzc:Lcom/google/android/gms/internal/ads/zzfow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpn;->zza:Lcom/google/android/gms/internal/ads/zzfpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpn;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfpn;->zzc:Lcom/google/android/gms/internal/ads/zzfow;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpo;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfow;)V

    return-void
.end method

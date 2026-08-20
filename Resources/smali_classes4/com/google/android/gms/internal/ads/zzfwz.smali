.class final Lcom/google/android/gms/internal/ads/zzfwz;
.super Lcom/google/android/gms/internal/ads/zzfwv;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfxf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfxf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwz;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzd(Lcom/google/android/gms/internal/ads/zzfxf;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzf(Lcom/google/android/gms/internal/ads/zzfxf;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v0

    const-string v1, "Unbind from service."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfwu;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zza(Lcom/google/android/gms/internal/ads/zzfxf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzb(Lcom/google/android/gms/internal/ads/zzfxf;)Landroid/content/ServiceConnection;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfxf;->zzj(Lcom/google/android/gms/internal/ads/zzfxf;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->zzk(Lcom/google/android/gms/internal/ads/zzfxf;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->zzi(Lcom/google/android/gms/internal/ads/zzfxf;Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwz;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzl(Lcom/google/android/gms/internal/ads/zzfxf;)V

    return-void
.end method

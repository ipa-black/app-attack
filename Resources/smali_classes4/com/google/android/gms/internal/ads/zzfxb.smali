.class final Lcom/google/android/gms/internal/ads/zzfxb;
.super Lcom/google/android/gms/internal/ads/zzfwv;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Landroid/os/IBinder;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfxe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfxe;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxb;->zzb:Lcom/google/android/gms/internal/ads/zzfxe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfxb;->zza:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->zzb:Lcom/google/android/gms/internal/ads/zzfxe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfxe;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfxb;->zza:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfwr;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->zzk(Lcom/google/android/gms/internal/ads/zzfxf;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->zzb:Lcom/google/android/gms/internal/ads/zzfxe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfxe;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzn(Lcom/google/android/gms/internal/ads/zzfxf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->zzb:Lcom/google/android/gms/internal/ads/zzfxe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfxe;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->zzj(Lcom/google/android/gms/internal/ads/zzfxf;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->zzb:Lcom/google/android/gms/internal/ads/zzfxe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfxe;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzg(Lcom/google/android/gms/internal/ads/zzfxf;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxb;->zzb:Lcom/google/android/gms/internal/ads/zzfxe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfxe;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zzg(Lcom/google/android/gms/internal/ads/zzfxf;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

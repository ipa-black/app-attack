.class final Lcom/google/android/gms/internal/ads/zzfwd;
.super Lcom/google/android/gms/internal/ads/zzfwv;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfwj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfwm;

.field final synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfwh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/ads/zzfwj;Lcom/google/android/gms/internal/ads/zzfwm;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzd:Lcom/google/android/gms/internal/ads/zzfwh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zza:Lcom/google/android/gms/internal/ads/zzfwj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzb:Lcom/google/android/gms/internal/ads/zzfwm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfwv;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzd:Lcom/google/android/gms/internal/ads/zzfwh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfwh;->zza:Lcom/google/android/gms/internal/ads/zzfxf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxf;->zze()Landroid/os/IInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzd:Lcom/google/android/gms/internal/ads/zzfwh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwh;->zzb(Lcom/google/android/gms/internal/ads/zzfwh;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zza:Lcom/google/android/gms/internal/ads/zzfwj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwh;->zzb(Lcom/google/android/gms/internal/ads/zzfwh;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    .line 2
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "windowToken"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zze()Landroid/os/IBinder;

    move-result-object v6

    .line 3
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v5, "adFieldEnifd"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zzf()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "layoutGravity"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zzc()I

    move-result v6

    .line 5
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "layoutVerticalMargin"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zza()F

    move-result v6

    .line 6
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "displayMode"

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "windowWidthPx"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zzd()I

    move-result v7

    .line 8
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "stableSessionToken"

    .line 9
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "callerPackage"

    .line 10
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zzg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "appId"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwj;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzd:Lcom/google/android/gms/internal/ads/zzfwh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzb:Lcom/google/android/gms/internal/ads/zzfwm;

    .line 12
    invoke-direct {v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzfwg;-><init>(Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzfwm;)V

    .line 13
    invoke-interface {v0, v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzfwr;->zzf(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfwt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwh;->zza()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzd:Lcom/google/android/gms/internal/ads/zzfwh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfwh;->zzb(Lcom/google/android/gms/internal/ads/zzfwh;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "show overlay display from: %s"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfwu;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 15
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

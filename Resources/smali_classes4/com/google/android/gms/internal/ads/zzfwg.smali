.class final Lcom/google/android/gms/internal/ads/zzfwg;
.super Lcom/google/android/gms/internal/ads/zzfws;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfwh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfwm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzfwm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwg;->zza:Lcom/google/android/gms/internal/ads/zzfwh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfws;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwg;->zzb:Lcom/google/android/gms/internal/ads/zzfwm;

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "statusCode"

    const/16 v1, 0x1fd6

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "sessionToken"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwl;->zzc()Lcom/google/android/gms/internal/ads/zzfwk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfwk;->zzb(I)Lcom/google/android/gms/internal/ads/zzfwk;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfwk;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwg;->zzb:Lcom/google/android/gms/internal/ads/zzfwm;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwk;->zzc()Lcom/google/android/gms/internal/ads/zzfwl;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzfwm;->zza(Lcom/google/android/gms/internal/ads/zzfwl;)V

    const/16 p1, 0x1fdd

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwg;->zza:Lcom/google/android/gms/internal/ads/zzfwh;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwh;->zzc()V

    :cond_1
    return-void
.end method

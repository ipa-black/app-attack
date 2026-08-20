.class final Lcom/google/android/gms/internal/ads/zzbub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcii;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbtz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbue;Lcom/google/android/gms/internal/ads/zzbtz;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbub;->zza:Lcom/google/android/gms/internal/ads/zzbtz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbub;->zza:Lcom/google/android/gms/internal/ads/zzbtz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcin;->zzg()V

    return-void
.end method

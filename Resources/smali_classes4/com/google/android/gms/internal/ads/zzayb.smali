.class final Lcom/google/android/gms/internal/ads/zzayb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/io/IOException;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzayf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayf;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayb;->zza:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzb:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzl(Lcom/google/android/gms/internal/ads/zzayf;)Lcom/google/android/gms/internal/ads/zzayg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zza:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayg;->zzi(Ljava/io/IOException;)V

    return-void
.end method

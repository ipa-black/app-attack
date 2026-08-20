.class public final Lcom/google/android/gms/internal/ads/zzacc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzm;


# instance fields
.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzzm;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzb:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzc:Lcom/google/android/gms/internal/ads/zzzm;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzacc;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzb:J

    return-wide v0
.end method


# virtual methods
.method public final zzC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzc:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzm;->zzC()V

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/internal/ads/zzaam;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzc:Lcom/google/android/gms/internal/ads/zzzm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzacb;-><init>(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaam;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzzm;->zzN(Lcom/google/android/gms/internal/ads/zzaam;)V

    return-void
.end method

.method public final zzv(II)Lcom/google/android/gms/internal/ads/zzaaq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->zzc:Lcom/google/android/gms/internal/ads/zzzm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzm;->zzv(II)Lcom/google/android/gms/internal/ads/zzaaq;

    move-result-object p1

    return-object p1
.end method

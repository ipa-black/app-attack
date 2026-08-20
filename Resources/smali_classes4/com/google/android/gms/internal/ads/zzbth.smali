.class final Lcom/google/android/gms/internal/ads/zzbth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqd;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbti;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbqd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbti;Lcom/google/android/gms/internal/ads/zzbqd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbth;->zza:Lcom/google/android/gms/internal/ads/zzbti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbqd;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbth;)Lcom/google/android/gms/internal/ads/zzbqd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbqd;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcno;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbth;->zzb:Lcom/google/android/gms/internal/ads/zzbqd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbth;->zza:Lcom/google/android/gms/internal/ads/zzbti;

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbqd;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

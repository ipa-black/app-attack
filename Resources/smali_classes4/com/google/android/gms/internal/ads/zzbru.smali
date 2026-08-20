.class final Lcom/google/android/gms/internal/ads/zzbru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdy;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbrm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbry;Lcom/google/android/gms/internal/ads/zzbrm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbru;->zza:Lcom/google/android/gms/internal/ads/zzbrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcig;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcig;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbru;->zza:Lcom/google/android/gms/internal/ads/zzbrm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbrt;

    .line 3
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbrt;-><init>(Lcom/google/android/gms/internal/ads/zzbru;Lcom/google/android/gms/internal/ads/zzcig;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbrs;->zze(Lcom/google/android/gms/internal/ads/zzbrm;Lcom/google/android/gms/internal/ads/zzbrr;)V

    return-object v0
.end method

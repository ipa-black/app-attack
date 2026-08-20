.class public final Lcom/google/android/gms/internal/ads/zzdom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhep;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zza:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzb:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdom;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zza:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhet;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhet;->zzd()Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzb:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhet;->zzd()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhet;->zzd()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoq;->zza()Lcom/google/android/gms/internal/ads/zzdqr;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdol;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdol;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzdqr;)V

    return-object v0
.end method

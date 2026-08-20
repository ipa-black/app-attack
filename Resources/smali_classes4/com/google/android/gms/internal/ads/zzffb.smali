.class public final Lcom/google/android/gms/internal/ads/zzffb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfga;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzddw;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfi;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzddw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Lcom/google/android/gms/internal/ads/zzddw;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgb;->zzb:Lcom/google/android/gms/internal/ads/zzffy;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzffz;->zza(Lcom/google/android/gms/internal/ads/zzffy;)Lcom/google/android/gms/internal/ads/zzddv;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfgg;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfgg;-><init>(Z)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzddv;->zzb(Lcom/google/android/gms/internal/ads/zzfgg;)Lcom/google/android/gms/internal/ads/zzddv;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzddv;->zzh()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzddw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Lcom/google/android/gms/internal/ads/zzddw;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzddw;->zzb()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzflb;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzflb;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbu;->zzj()Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p3

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgei;->zzv(Lcom/google/android/gms/internal/ads/zzgfb;)Lcom/google/android/gms/internal/ads/zzgei;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfez;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfez;-><init>(Lcom/google/android/gms/internal/ads/zzffb;Lcom/google/android/gms/internal/ads/zzflb;Lcom/google/android/gms/internal/ads/zzdbu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzger;->zzn(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/ads/zzffa;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzffa;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzger;->zzm(Lcom/google/android/gms/internal/ads/zzgfb;Lcom/google/android/gms/internal/ads/zzfxt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzffb;->zzb(Lcom/google/android/gms/internal/ads/zzfgb;Lcom/google/android/gms/internal/ads/zzffz;Lcom/google/android/gms/internal/ads/zzddw;)Lcom/google/android/gms/internal/ads/zzgfb;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Lcom/google/android/gms/internal/ads/zzddw;

    return-object v0
.end method

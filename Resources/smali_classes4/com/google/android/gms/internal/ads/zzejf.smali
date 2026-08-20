.class public final synthetic Lcom/google/android/gms/internal/ads/zzejf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmm;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzejg;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzejg;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejf;->zza:Lcom/google/android/gms/internal/ads/zzejg;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzejf;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejf;->zza:Lcom/google/android/gms/internal/ads/zzejg;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzejf;->zzb:J

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejl;->zzf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhf;->zzg()Lcom/google/android/gms/internal/ads/zzbhe;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbhe;->zzh(J)Lcom/google/android/gms/internal/ads/zzbhe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwe;->zzaw()[B

    move-result-object v0

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzejn;->zzg(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 4
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzejn;->zzd(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

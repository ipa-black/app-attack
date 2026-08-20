.class final Lcom/google/android/gms/internal/ads/zzcrk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcre;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfgg;

.field private zzc:Lcom/google/android/gms/internal/ads/zzffh;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdka;

.field private zze:Lcom/google/android/gms/internal/ads/zzddz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/internal/ads/zzcrj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzffh;)Lcom/google/android/gms/internal/ads/zzddv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzc:Lcom/google/android/gms/internal/ads/zzffh;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgg;)Lcom/google/android/gms/internal/ads/zzddv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzb:Lcom/google/android/gms/internal/ads/zzfgg;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    return-object p0
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzddz;)Lcom/google/android/gms/internal/ads/zzcxx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zze:Lcom/google/android/gms/internal/ads/zzddz;

    return-object p0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zze:Lcom/google/android/gms/internal/ads/zzddz;

    const-class v1, Lcom/google/android/gms/internal/ads/zzddz;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdbw;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdbw;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfkk;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfkk;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzddh;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzddh;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdzu;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdzu;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zze:Lcom/google/android/gms/internal/ads/zzddz;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzb:Lcom/google/android/gms/internal/ads/zzfgg;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzcrk;->zzc:Lcom/google/android/gms/internal/ads/zzffh;

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzfkk;Lcom/google/android/gms/internal/ads/zzddh;Lcom/google/android/gms/internal/ads/zzdzu;Lcom/google/android/gms/internal/ads/zzdka;Lcom/google/android/gms/internal/ads/zzddz;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfgg;Lcom/google/android/gms/internal/ads/zzffh;Lcom/google/android/gms/internal/ads/zzcrl;)V

    return-object v0
.end method

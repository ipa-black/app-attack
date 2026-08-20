.class final Lcom/google/android/gms/internal/ads/zzcqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdor;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcre;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfgg;

.field private zzc:Lcom/google/android/gms/internal/ads/zzffh;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdka;

.field private zze:Lcom/google/android/gms/internal/ads/zzddz;

.field private zzf:Lcom/google/android/gms/internal/ads/zzdon;

.field private zzg:Lcom/google/android/gms/internal/ads/zzcyi;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/internal/ads/zzcqn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqo;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzffh;)Lcom/google/android/gms/internal/ads/zzddv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqo;->zzc:Lcom/google/android/gms/internal/ads/zzffh;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgg;)Lcom/google/android/gms/internal/ads/zzddv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqo;->zzb:Lcom/google/android/gms/internal/ads/zzfgg;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcyi;)Lcom/google/android/gms/internal/ads/zzdor;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqo;->zzg:Lcom/google/android/gms/internal/ads/zzcyi;

    return-object p0
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdon;)Lcom/google/android/gms/internal/ads/zzdor;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqo;->zzf:Lcom/google/android/gms/internal/ads/zzdon;

    return-object p0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzdor;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqo;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    return-object p0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzddz;)Lcom/google/android/gms/internal/ads/zzdor;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqo;->zze:Lcom/google/android/gms/internal/ads/zzddz;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdos;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zze:Lcom/google/android/gms/internal/ads/zzddz;

    const-class v2, Lcom/google/android/gms/internal/ads/zzddz;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zzf:Lcom/google/android/gms/internal/ads/zzdon;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdon;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zzg:Lcom/google/android/gms/internal/ads/zzcyi;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcyi;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqq;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zzg:Lcom/google/android/gms/internal/ads/zzcyi;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zzf:Lcom/google/android/gms/internal/ads/zzdon;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdbw;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdbw;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfkk;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfkk;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzddh;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzddh;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdzu;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdzu;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zzd:Lcom/google/android/gms/internal/ads/zzdka;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zze:Lcom/google/android/gms/internal/ads/zzddz;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zzb:Lcom/google/android/gms/internal/ads/zzfgg;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzcqo;->zzc:Lcom/google/android/gms/internal/ads/zzffh;

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object v3, v1

    .line 5
    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzcqq;-><init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/internal/ads/zzcyi;Lcom/google/android/gms/internal/ads/zzdon;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzfkk;Lcom/google/android/gms/internal/ads/zzddh;Lcom/google/android/gms/internal/ads/zzdzu;Lcom/google/android/gms/internal/ads/zzdka;Lcom/google/android/gms/internal/ads/zzddz;Lcom/google/android/gms/internal/ads/zzfix;Lcom/google/android/gms/internal/ads/zzfgg;Lcom/google/android/gms/internal/ads/zzffh;Lcom/google/android/gms/internal/ads/zzcqp;)V

    return-object v1
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcqo;->zzg()Lcom/google/android/gms/internal/ads/zzdos;

    move-result-object v0

    return-object v0
.end method

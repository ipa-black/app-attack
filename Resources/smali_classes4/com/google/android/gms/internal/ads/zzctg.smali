.class final Lcom/google/android/gms/internal/ads/zzctg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfif;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcre;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzctg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzctf;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzb:Lcom/google/android/gms/internal/ads/zzctg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzY(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzad(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfgf;

    invoke-direct {v4, p2, p4, v0}, Lcom/google/android/gms/internal/ads/zzfgf;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzY(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhp;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzfhp;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctg;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjd;->zza()Lcom/google/android/gms/internal/ads/zzfjd;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzf:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzM(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzI(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfji;->zza()Lcom/google/android/gms/internal/ads/zzfji;

    move-result-object v6

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfhz;

    move-object v0, v9

    move-object v1, p2

    move-object v5, p4

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfhz;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 4
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzg:Lcom/google/android/gms/internal/ads/zzhfc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfij;

    invoke-direct {v0, v2, p4, v8}, Lcom/google/android/gms/internal/ads/zzfij;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzi:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzaC(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v6

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfid;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfid;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzj:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzj:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfic;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfii;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfii;

    return-object v0
.end method

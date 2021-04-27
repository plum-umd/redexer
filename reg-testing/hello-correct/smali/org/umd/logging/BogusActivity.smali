.class public Lorg/umd/logging/BogusActivity;
.super Landroid/app/Activity;
.source "BogusActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const/4 v7, 0x4

    const-string v8, "Hello, Logging"

    aput-object v8, v1, v7

    .line 48
    const-class v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "setText"

    invoke-static {v9, v10, v1}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, p1}, Lorg/umd/logging/BogusActivity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const-string v3, "setContentView"

    aput-object v3, v1, v7

    const-string v3, "XXX"

    invoke-static {p1, v3, v1}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    .line 61
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v4

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, p1, v5

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p1, v6

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, p1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const v0, 0x4048f5c3    # 3.14f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p1, v1

    invoke-static {v3, v3, p1}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/umd/logging/DisplayActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "MESSAGE"

    const-string v1, "Hello, another Activity"

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, p1}, Lorg/umd/logging/BogusActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lorg/umd/logging/BogusActivity;->finish()V

    return-void
.end method

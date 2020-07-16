.class public Lorg/umd/logging/DisplayActivity;
.super Landroid/app/Activity;
.source "DisplayActivity.java"


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "MESSAGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lorg/umd/logging/DisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MESSAGE"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x42200000    # 40.0f

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0, v0}, Lorg/umd/logging/DisplayActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

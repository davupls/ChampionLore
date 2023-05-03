//
//  ChampionDetailView.swift
//  ChampionLore
//
//  Created by David Mclean on 5/2/23.
//

import SwiftUI

struct ChampionDetailView: View {
    let champ: Champion
    @State var isShowingBio = false
    @State var isShowingStory = false
    
    var body: some View {
        ScrollView {
            VStack {
                detailHeader
                Text(champ.slogan)
                    .italic()
                    .foregroundColor(.secondary)
                    .padding(.vertical)
                detailContent
                buttonSheets
            }
            .padding(.horizontal)
            Spacer()
        }
        
    }
    
    
    
    // MARK: Header View Variable
    var detailHeader : some View {
        HStack(alignment: .center){
            Image("\(champ.name.lowercased())-splash")
                .resizable()
                .scaledToFill()
                .offset(x: -30)
                .frame(width: 120, height: 180)
                .clipped()
                .shadow(radius: 5)
                .padding(.horizontal)

                
                
                
//                .background(.blue)
            
            VStack(alignment: .leading) {
                Text(champ.name)
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .padding(.bottom, 2)
                Text(champ.aka)
                    .foregroundColor(.secondary)
                    .font(.headline)
                
            }
            Spacer()
        }
    }
    
    // MARK: Detail View Variable
    var detailContent: some View {
        VStack {
            Text(champ.intro)
                .lineSpacing(CGFloat(10.0))
                .font(.body)
                .kerning(1.0)
                .padding(.bottom)
                .multilineTextAlignment(.leading)
        }
    }
    
    // MARK: Button View Variable
    var buttonSheets: some View {
        
        HStack(spacing: 30) {
            
            Button("Biography") {
                isShowingBio = true
            }
            .buttonStyle()
            .sheet(isPresented: $isShowingBio) {
                ScrollView {
                    VStack {
                        Text("Biography")
                            .titleStyle()
                        ForEach(champ.bio, id: \.self) { para in
                            Text(para)
                                .longTextStyle()
                        }
                    }
                    .padding()
                }
            }
            
            Button("Story") {
                isShowingStory = true
            }
            .buttonStyle()
            .sheet(isPresented: $isShowingStory) {
                ScrollView {
                    VStack {
                        Text("Story")
                            .titleStyle()
                        VStack(alignment: .leading) {
                            ForEach(champ.story, id: \.self) { para in
                                Text(!para.isEmpty ? para : "No Story Avaiable as of now.")
                                    .longTextStyle()
                            }
                        }
                    }
                    .padding()
                }
            }
            
        }
    }
    
    
}

// MARK: Button Style Modifier View
struct ButtonSheet: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 130, height: 50)
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(5)
    }
}

extension View {
    func buttonStyle() -> some View {
        modifier(ButtonSheet())
    }
}


// MARK: Long Text Modifier View

struct LongTextFormat: ViewModifier {
    func body(content: Content) -> some View {
        content
            .kerning(1.0)
            .lineSpacing(CGFloat(10))
            .font(.body)
            .padding(.bottom)
    }
}

extension View {
    func longTextStyle() -> some View {
        modifier(LongTextFormat())
    }
}


// MARK: Title View Modifier
struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding(.bottom)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(TitleModifier())
    }
}























struct ChampionDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        ChampionDetailView(champ: Champion(id: 1, name: "Aatrox", aka: "The Darkin Blade", slogan: "“I must destroy even hope...”", location: "Runeterra", intro: "Once honored defenders of Shurima against the Void, Aatrox and his brethren would eventually become an even greater threat to Runeterra, and were defeated only by cunning mortal sorcery. But after centuries of imprisonment, Aatrox was the first to find freedom once more, corrupting and transforming those foolish enough to try and wield the magical weapon that contained his essence. Now, with stolen flesh, he walks Runeterra in a brutal approximation of his previous form, seeking an apocalyptic and long overdue vengeance.", bio: [
            "Whether mistaken for a demon or god, many tales have been told of the Darkin Blade... but few know his real name, or the story of his fall.",
            "In ancient times, long before desert sands swallowed the empire, a mighty champion of Shurima was brought before the Sun Disc to become the avatar for a now forgotten celestial ideal. Remade as one of the Ascended, his wings were the golden light of dawn, and his armor sparkled like a constellation of hope from beyond the great veil.",
            "Aatrox was his name. He was at the vanguard of every noble conflict. So true and just was his conduct that other god-warriors would always gather at his side, and ten thousand mortals of Shurima marched behind him. When Setaka, the Ascended warrior-queen, called for his help against the rebellion of Icathia, Aatrox answered without hesitation.",
            "But no one predicted the extent of the horrors that the rebels would unleash—the Void quickly overwhelmed its Icathian masters, and began the grinding annihilation of all life it encountered.",
            "After many years of desperate battle, Aatrox and his brethren finally halted the Void’s perverse advance, and seared the largest rifts shut. But the surviving Ascended, the self-described Sunborn, had been forever changed by what they had encountered. Though Shurima had triumphed, they all had lost something in their victory... even noble Aatrox.",
            "And in time, Shurima fell, as all empires must.",
            "Without any monarch to defend, or the existential threat of the Void to test them, Aatrox and the Sunborn began to clash with one another, and eventually this became a war for the ruins of their world. Mortals fleeing the conflict came to know them instead by a new and scornful name: the",
            "Fearing that these fallen Ascended were as dangerous to Runeterra’s survival as the Void incursions had been, the Targonians intervened. It is said that the Aspect of Twilight gave mortals the knowledge to trap the darkin, and the newly reborn Aspect of War united many in fighting back against them. Never fearing any foe, Aatrox and his armies were ready, and he realized only too late that they had been deceived. A force greater than a thousand dead suns pulled him inside the sword he had carried into battle countless times, and forever bound his immortal essence to it.",
            "The weapon was a prison, sealing his consciousness in suffocating, eternal darkness, robbing him even of the ability to die. For centuries, he strained against this hellish confinement... until some nameless mortal was foolish enough to try and wield the blade once more. Aatrox seized upon this opportunity, forcing his will and an imitation of his original form onto his bearer, though the process quickly drained all life from the new body.",
            "In the years that followed, Aatrox groomed many more hosts—men and women of exceptional vitality or fortitude. Though his grasp of such magics had been limited in life, he learned to take control of a mortal in the span of single breath, and in battle he discovered he could feast on his victims to build himself ever larger and stronger.",
            "Aatrox traveled the land, searching desperately, endlessly, for a way return to his previous Ascended form… but the riddle of the blade proved unsolvable, and in time he realized he would never be free of it. The flesh he stole and crudely shaped began to feel like a mockery of his former glory—a cage only slightly larger than the sword. Despair and loathing grew in his heart. The heavenly powers that Aatrox had once embodied had been wiped from the world, and all memory.",
            "Raging against this injustice, he arrived at a solution that could only be born of a prisoner’s desperation. If he could not destroy the blade or free himself, then he would embrace oblivion instead.",
            "Now, Aatrox marches toward this merciless goal, bringing war and death wherever he goes. He clings to a blind hope: if he can drive all of creation into a final, apocalyptic battle—where everything,  else is destroyed—then maybe he and the blade will also cease to exist."
        ], story: [
            "Darkness.",
            "The breath I cannot take plagues me.",
            "It is an emptiness in my lungs and throat. As if I had stopped mid-breath, and then held my lungs cruelly waiting. My mouth open, throat hollow, unable to pull in air. My chest, the horrible tension on my thorax.",
            "My limbs and muscles refuse to move. I cannot breathe. I am choking. The pressure builds. The stillness spreads to my chest and limbs. I want to scream, to tear at my face, to wail—but I am trapped. I cannot move. I cannot move.",
            "Darkness.",
            "I must remember. I must remem—",
            "The battle. I lost control. It was foolish. The mortals formed in ranks against me. I crashed into them. Drank from them. The temptation was too great. As I reaped, I reforged their flesh into a better approximation of my true shape. Desperately, I consumed more and more, hoping for the briefest echo of what I once was. Instead, like a fire, I burned too quickly, destroying even my host’s form.",
            "Darkness.",
            "It was raining when we fought. What if the mud and filth cover me? What if I’m hidden for ? Trapped in this prison. The horror of that idea feeds my panic. The battle is ending. I can feel it. I must will my form upright. I must… I must...",
            "I have no arms or legs. The darkness binds me, like a cocoon.",
            "No. I will myself upright. But I can’t know if it is working. I cannot know anything but the darkness.",
            "Please. Let some mortal find me.  I beg the darkness endlessly, but the humiliation of my plea is answered only with silence.",
            "",
            "I feel a mortal nearby. I have no eyes, no ears, but I can feel his approach. He is fleeing from adversaries. He must try to defend himself. He  grasp me.",
            "Can he see me? He could run past me. I would be left here.",
            "I feel his hand grip this form and…",
            "I burrow into him, pulling him down. I am like a drowning man thrown into the sea by a shipwreck, dragging myself to the surface by clawing past my fellows.",
            "“What’s happening?!” the mortal screams. But he is silenced by the darkness—the endless darkness I have just escaped.",
            "And I have eyes.",
            "I can see the falling rain. The muck. The blood of this slaughtering field. In front of me stand two weary knights with spears. I cut them apart, and drink in their forms, recrafting this body to my needs.",
            "They are weak. I must move quickly. I must find a better wielder. A better host. Around me are only the dead and dying. I hear their souls retreating from this world.",
            "The fighting has not ended. It’s moved inside the city walls. I force my new shape—limping, crawling—toward the sounds of battle. Toward a better host.",
            "I roar. But not in triumph. Never in triumph.",
            "I will drink from that city, but I will achieve only a grotesque mockery of my former glory. I was shaped by the stars, and the purity of my aspect. I was light and reason given shape. I defended this world in the greatest battles ever known. Now, blood and ichor drips from this stolen flesh as it decays. The muscles and bones struggle, tear, and protest the abomination I have become.",
            "I take a breath.",
            "I say, my voice wet and echoing off the dead that surround me.",
            "Until the final oblivion comes."
        ]))
    }
}

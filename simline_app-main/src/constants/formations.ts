export const formationOptions = ["4 Man", "5 Man", "6 Man", "7 Man"] as const;

export type FormationName = (typeof formationOptions)[number];

export const formationTypeOptions = [
  { id: 1, label: "Check" },
  { id: 2, label: "Jack" },
  { id: 3, label: "King" },
  { id: 4, label: "Queen" },
  { id: 5, label: "Ace" },
] as const;

export type FormationTypeId = (typeof formationTypeOptions)[number]["id"];

type FormationPreset = {
  numberOfPlayers: number;
  startY: number;
};

export const formationPresets: Record<FormationName, FormationPreset> = {
  "4 Man": {
    numberOfPlayers: 4,
    startY: 8,
  },
  "5 Man": {
    numberOfPlayers: 5,
    startY: 12,
  },
  "6 Man": {
    numberOfPlayers: 6,
    startY: 12,
  },
  "7 Man": {
    numberOfPlayers: 7,
    startY: 12,
  },
};

export const playerNumbers = [2, 1, 6, 5, 4, 3, 7];

export function getAnimationOffset(
  index: number,
  totalPlayers: number,
  currentTime: number,
  formationType: FormationTypeId | null
) {
  const progress = Math.min(currentTime / 2.5, 1);

  switch (formationType) {
    case 1:
      return (index % 2 === 0 ? 1 : -1) * progress * 1.5;
    case 2:
      return (index % 2 === 0 ? 1 : -1) * progress * 2;
    case 3:
      return (index < totalPlayers / 2 ? -1 : 1) * progress * 1.8;
    case 4:
      return Math.sin(progress * Math.PI) * (index - totalPlayers / 2) * 0.8;
    case 5:
      return Math.cos(progress * Math.PI) * (index - totalPlayers / 2) * 1.2;
    default:
      return 0;
  }
}
